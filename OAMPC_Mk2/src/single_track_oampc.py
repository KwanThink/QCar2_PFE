"""Gurobi flat-coordinate OAMPC MIQP solver for QCar2 Mk2 tracking."""

from __future__ import annotations

import math
import time
from dataclasses import dataclass, field
from typing import Any

import numpy as np
import gurobipy as gp
from gurobipy import GRB

from src.oampc_solver_generator import OAMPCTemplate, build_oampc_template
from src.obstacle import build_obstacle_list


# Store the first optimal physical input, virtual input, and solver diagnostics.
@dataclass
class SolverResult:
    delta: float
    ax: float
    v1: float
    v2: float
    status: str
    success: bool
    solve_time: float
    slack_value: float = 0.0
    mip_gap: float | None = None
    number_of_config_obstacles: int = 0
    number_of_active_obstacles: int = 0
    number_of_active_edges: int = 0
    number_of_binary_variables: int = 0
    active_obstacle_ids: list[int] = field(default_factory=list)


# Clip a scalar value to a closed interval.
def clip(value: float, lower: float, upper: float) -> float:
    return float(np.clip(value, lower, upper))


# Wrap an angle to the interval [-pi, pi].
def wrap_to_pi(angle: float) -> float:
    return float((float(angle) + math.pi) % (2.0 * math.pi) - math.pi)


# Return the signed shortest angular error angle - reference_angle.
def angle_error(angle: float, reference_angle: float) -> float:
    return wrap_to_pi(float(angle) - float(reference_angle))


# Shift an angle by multiples of 2*pi so it stays close to a reference.
def unwrap_to_reference(angle: float, reference_angle: float) -> float:
    unwrapped_angle = float(angle)
    reference = float(reference_angle)
    while unwrapped_angle - reference > math.pi:
        unwrapped_angle -= 2.0 * math.pi
    while unwrapped_angle - reference < -math.pi:
        unwrapped_angle += 2.0 * math.pi
    return unwrapped_angle


# Solve a flat-coordinate Cartesian OAMPC MIQP with a persistent Gurobi template.
class GurobiFlatCoordinateOAMPC:
    # Initialize dimensions, weights, bounds, obstacles, and the reusable Gurobi model.
    def __init__(self, config: dict[str, Any], obstacle_file_config: dict[str, Any]):
        oampc_config = config["oampc"]
        obstacle_config = config["obstacle_avoidance"]
        constraints = oampc_config["constraints"]

        self.config = config
        self.wheelbase = float(oampc_config["wheelbase"])
        self.epsilon = float(oampc_config["epsilon"])
        self.sample_time = float(oampc_config["Ts"])
        self.horizon_steps = int(oampc_config["N"])
        self.nx = 4
        self.nv = 2

        self.q_x = float(oampc_config["Q"][0])
        self.q_y = float(oampc_config["Q"][1])
        self.r_v1 = float(oampc_config["R"][0])
        self.r_v2 = float(oampc_config["R"][1])
        self.slack_weight = float(obstacle_config["slack_weight"])
        self.big_m = float(obstacle_config["M"])
        self.gamma = float(obstacle_config["gamma"])

        self.delta_min = float(constraints["delta_min"])
        self.delta_max = float(constraints["delta_max"])
        self.ax_min = float(constraints["ax_min"])
        self.ax_max = float(constraints["ax_max"])

        self.config_obstacles = build_obstacle_list(obstacle_file_config)
        self.template: OAMPCTemplate = build_oampc_template(config, obstacle_file_config)
        self.model = self.template.model
        self.flat_state = self.template.flat_state
        self.virtual_input = self.template.virtual_input
        self.slack = self.template.slack
        self.alpha = self.template.alpha
        self.w_constraints = self.template.w_constraints
        self.obstacle_face_constraints = self.template.obstacle_face_constraints
        self.obstacle_sum_constraints = self.template.obstacle_sum_constraints
        self.number_of_template_edges = int(self.template.number_of_template_edges)
        # NumBinVars is the exact number of binary variables in the reusable MIQP template.
        self.number_of_binary_variables = int(self.model.NumBinVars)

        # Keep the latest usable solution for the shifted warm-start and the
        # horizon-dependent physical-input constraint mapping.
        self._previous_flat_state: np.ndarray | None = None
        self._previous_virtual_input: np.ndarray | None = None
        self._previous_alpha: np.ndarray | None = None
        self._previous_slack: float | None = None

    # Clear the cached solution and all explicit Gurobi start values.
    def reset_warm_start(self) -> None:
        self._previous_flat_state = None
        self._previous_virtual_input = None
        self._previous_alpha = None
        self._previous_slack = None
        for variable in self.model.getVars():
            variable.Start = GRB.UNDEFINED

    # Return True when a complete previous solution is available for shifting.
    def _warm_start_is_available(self) -> bool:
        return (
            self._previous_flat_state is not None
            and self._previous_virtual_input is not None
            and self._previous_alpha is not None
            and self._previous_slack is not None
        )

    # Save the current usable solution for the next OAMPC iteration.
    def _store_solution_for_warm_start(self) -> None:
        self._previous_flat_state = np.array(
            [
                [float(self.flat_state[step, state_index].X) for state_index in range(self.nx)]
                for step in range(self.horizon_steps + 1)
            ],
            dtype=float,
        )
        self._previous_virtual_input = np.array(
            [
                [float(self.virtual_input[step, input_index].X) for input_index in range(self.nv)]
                for step in range(self.horizon_steps)
            ],
            dtype=float,
        )

        number_of_obstacles = int(self.template.number_of_config_obstacles)
        self._previous_alpha = np.zeros(
            (number_of_obstacles, self.number_of_template_edges, self.horizon_steps),
            dtype=float,
        )
        for obstacle_slot in range(number_of_obstacles):
            for edge_slot in range(self.number_of_template_edges):
                for step in range(self.horizon_steps):
                    self._previous_alpha[obstacle_slot, edge_slot, step] = float(
                        self.alpha[obstacle_slot, edge_slot, step].X
                    )
        self._previous_slack = max(0.0, float(self.slack.X))

    # Apply a one-step shifted explicit start from the latest usable solution.
    def _apply_shifted_warm_start(self, current_flat_state: np.ndarray) -> None:
        if not self._warm_start_is_available():
            return

        assert self._previous_flat_state is not None
        assert self._previous_virtual_input is not None
        assert self._previous_alpha is not None
        assert self._previous_slack is not None

        # The initial state is always replaced by the current measured state.
        for state_index in range(self.nx):
            self.flat_state[0, state_index].Start = float(current_flat_state[state_index])

        # Shift the previous predicted states by one sample. The new terminal
        # state is obtained by one additional rollout with the previous last input.
        for step in range(1, self.horizon_steps):
            shifted_state = self._previous_flat_state[step + 1]
            for state_index in range(self.nx):
                self.flat_state[step, state_index].Start = float(shifted_state[state_index])

        terminal_state = (
            self.template.ad_matrix @ self._previous_flat_state[-1]
            + self.template.bd_matrix @ self._previous_virtual_input[-1]
        )
        for state_index in range(self.nx):
            self.flat_state[self.horizon_steps, state_index].Start = float(terminal_state[state_index])

        # Shift the virtual-input sequence and hold the last value at the end.
        for step in range(self.horizon_steps):
            source_step = min(step + 1, self.horizon_steps - 1)
            for input_index in range(self.nv):
                self.virtual_input[step, input_index].Start = float(
                    self._previous_virtual_input[source_step, input_index]
                )

        # Shift every binary obstacle-face decision in the same manner.
        number_of_obstacles = int(self.template.number_of_config_obstacles)
        for obstacle_slot in range(number_of_obstacles):
            for edge_slot in range(self.number_of_template_edges):
                for step in range(self.horizon_steps):
                    source_step = min(step + 1, self.horizon_steps - 1)
                    alpha_start = self._previous_alpha[obstacle_slot, edge_slot, source_step]
                    self.alpha[obstacle_slot, edge_slot, step].Start = float(round(alpha_start))

        self.slack.Start = float(self._previous_slack)

    # Convert a physical QCar2 state into the flat state z = [X, X_dot, Y, Y_dot].
    def _current_flat_state(self, current_state: np.ndarray) -> np.ndarray:
        current_x = float(current_state[0])
        current_y = float(current_state[1])
        current_yaw = float(current_state[2])
        current_velocity = float(current_state[3])
        return np.array(
            [
                current_x,
                current_velocity * math.cos(current_yaw),
                current_y,
                current_velocity * math.sin(current_yaw),
            ],
            dtype=float,
        )

    # Fix the initial flat state by setting identical lower and upper bounds.
    def _fix_initial_flat_state(self, z0: np.ndarray) -> None:
        for state_index in range(self.nx):
            variable = self.flat_state[0, state_index]
            variable.LB = float(z0[state_index])
            variable.UB = float(z0[state_index])

    # Build the quadratic objective for the current Cartesian reference horizon.
    def _build_objective(self, reference_state: np.ndarray) -> gp.QuadExpr:
        objective = gp.QuadExpr()
        for step in range(self.horizon_steps):
            x_reference = float(reference_state[0, step + 1])
            y_reference = float(reference_state[1, step + 1])
            x_error = self.flat_state[step + 1, 0] - x_reference
            y_error = self.flat_state[step + 1, 2] - y_reference
            v1 = self.virtual_input[step, 0]
            v2 = self.virtual_input[step, 1]
            objective += self.q_x * x_error * x_error
            objective += self.q_y * y_error * y_error
            objective += self.r_v1 * v1 * v1
            objective += self.r_v2 * v2 * v2
        objective += self.slack_weight * self.slack
        return objective

    # Recover yaw and speed from one flat state for the input-set mapping.
    def _mapping_state_from_flat_state(self, flat_state: np.ndarray, fallback_yaw: float) -> tuple[float, float]:
        x_velocity = float(flat_state[1])
        y_velocity = float(flat_state[3])
        velocity = float(math.hypot(x_velocity, y_velocity))
        if velocity <= 1.0e-9:
            return float(fallback_yaw), 0.0
        return float(math.atan2(y_velocity, x_velocity)), velocity

    # Build the yaw and speed sequence used to update M at every horizon step.
    def _build_mapping_state_sequence(
        self,
        current_state: np.ndarray,
        reference_state: np.ndarray,
    ) -> tuple[np.ndarray, np.ndarray]:
        yaw_sequence = np.asarray(reference_state[2, : self.horizon_steps], dtype=float).copy()
        velocity_sequence = np.maximum(
            np.asarray(reference_state[3, : self.horizon_steps], dtype=float),
            0.0,
        )

        # The first physical-input mapping always uses the measured state.
        yaw_sequence[0] = float(current_state[2])
        velocity_sequence[0] = max(0.0, float(current_state[3]))

        # Future mappings use the shifted state trajectory from the previous
        # usable solution. The reference yaw remains the low-speed fallback.
        if self._warm_start_is_available():
            assert self._previous_flat_state is not None
            for step in range(1, self.horizon_steps):
                previous_state_index = step + 1
                yaw, velocity = self._mapping_state_from_flat_state(
                    self._previous_flat_state[previous_state_index],
                    fallback_yaw=float(yaw_sequence[step]),
                )
                yaw_sequence[step] = yaw
                velocity_sequence[step] = velocity

        return yaw_sequence, velocity_sequence

    # Update each flat-input constraint W_j from its horizon yaw and velocity.
    def _update_virtual_input_constraints(
        self,
        current_state: np.ndarray,
        reference_state: np.ndarray,
    ) -> tuple[float, float]:
        yaw_sequence, velocity_sequence = self._build_mapping_state_sequence(
            current_state,
            reference_state,
        )

        for step in range(self.horizon_steps):
            psi = float(yaw_sequence[step])
            vx = float(velocity_sequence[step])
            vx_eps = vx * vx + self.epsilon
            m11 = -self.wheelbase / vx_eps * math.sin(psi)
            m12 = self.wheelbase / vx_eps * math.cos(psi)
            m21 = math.cos(psi)
            m22 = math.sin(psi)

            v1 = self.virtual_input[step, 0]
            v2 = self.virtual_input[step, 1]
            for constraint_name in ("steering_lower", "steering_upper"):
                constraint = self.w_constraints[constraint_name][step]
                self.model.chgCoeff(constraint, v1, m11)
                self.model.chgCoeff(constraint, v2, m12)
            for constraint_name in ("acceleration_lower", "acceleration_upper"):
                constraint = self.w_constraints[constraint_name][step]
                self.model.chgCoeff(constraint, v1, m21)
                self.model.chgCoeff(constraint, v2, m22)

        current_psi = float(yaw_sequence[0])
        current_vx_eps = float(velocity_sequence[0] * velocity_sequence[0] + self.epsilon)
        return current_psi, current_vx_eps

    # Convert the first optimal virtual input into physical steering and acceleration.
    def _virtual_to_physical_input(self, v1: float, v2: float, psi: float, vx_eps: float) -> tuple[float, float]:
        steering_argument = (self.wheelbase / vx_eps) * (-float(v1) * math.sin(psi) + float(v2) * math.cos(psi))
        delta = math.atan(steering_argument)
        ax = float(v1) * math.cos(psi) + float(v2) * math.sin(psi)
        delta = clip(delta, self.delta_min, self.delta_max)
        ax = clip(ax, self.ax_min, self.ax_max)
        return delta, ax

    # Return a stable text name for the most common Gurobi status codes.
    def _status_name(self, status_code: int) -> str:
        status_names = {
            GRB.LOADED: "LOADED",
            GRB.OPTIMAL: "OPTIMAL",
            GRB.INFEASIBLE: "INFEASIBLE",
            GRB.INF_OR_UNBD: "INF_OR_UNBD",
            GRB.UNBOUNDED: "UNBOUNDED",
            GRB.CUTOFF: "CUTOFF",
            GRB.ITERATION_LIMIT: "ITERATION_LIMIT",
            GRB.NODE_LIMIT: "NODE_LIMIT",
            GRB.TIME_LIMIT: "TIME_LIMIT",
            GRB.SOLUTION_LIMIT: "SOLUTION_LIMIT",
            GRB.INTERRUPTED: "INTERRUPTED",
            GRB.NUMERIC: "NUMERIC",
            GRB.SUBOPTIMAL: "SUBOPTIMAL",
            GRB.INPROGRESS: "INPROGRESS",
            GRB.USER_OBJ_LIMIT: "USER_OBJ_LIMIT",
        }
        return status_names.get(int(status_code), f"STATUS_{int(status_code)}")

    # Decide whether the Gurobi result contains an applicable first control action.
    def _solution_is_usable(self, status_code: int) -> bool:
        if int(status_code) == GRB.OPTIMAL:
            return True
        usable_suboptimal_statuses = {GRB.SUBOPTIMAL, GRB.TIME_LIMIT, GRB.INTERRUPTED, GRB.USER_OBJ_LIMIT}
        return int(status_code) in usable_suboptimal_statuses and int(self.model.SolCount) > 0

    # Return the current MIP gap when Gurobi exposes one for this solve.
    def _mip_gap(self) -> float | None:
        try:
            value = float(self.model.MIPGap)
        except Exception:
            return None
        if not np.isfinite(value):
            return None
        return value

    # Return the value of the obstacle slack variable.
    def _slack_value(self) -> float:
        try:
            return float(self.slack.X)
        except Exception:
            return 0.0

    # Optimize the current Gurobi model and return status information.
    def _optimize_current_model(self) -> tuple[str, bool]:
        self.model.optimize()
        status_code = int(self.model.Status)
        status_name = self._status_name(status_code)
        success = self._solution_is_usable(status_code)
        return status_name, success

    # Build a SolverResult from the first virtual input of the current solution.
    def _result_from_solution(
        self,
        status: str,
        success: bool,
        solve_time: float,
        psi: float,
        vx_eps: float,
        active_obstacles: list[dict[str, Any]],
    ) -> SolverResult:
        v1 = 0.0
        v2 = 0.0
        delta = 0.0
        ax = 0.0
        if success:
            v1 = float(self.virtual_input[0, 0].X)
            v2 = float(self.virtual_input[0, 1].X)
            delta, ax = self._virtual_to_physical_input(v1, v2, psi, vx_eps)
        active_ids = [int(obstacle["obstacle_id"]) for obstacle in active_obstacles]
        active_edges = int(sum(int(obstacle["number_of_edges"]) for obstacle in active_obstacles))
        return SolverResult(
            delta=delta,
            ax=ax,
            v1=v1,
            v2=v2,
            status=status,
            success=success,
            solve_time=float(solve_time),
            slack_value=self._slack_value(),
            mip_gap=self._mip_gap(),
            number_of_config_obstacles=len(self.config_obstacles),
            number_of_active_obstacles=len(active_obstacles),
            number_of_active_edges=active_edges,
            number_of_binary_variables=self.number_of_binary_variables,
            active_obstacle_ids=active_ids,
        )

    # Solve the MIQP with every configured obstacle constraint present from the beginning.
    def solve(
        self,
        current_state: np.ndarray,
        reference_state: np.ndarray,
        reference_input: np.ndarray | None = None,
        obstacle_list: list[dict[str, Any]] | None = None,
    ) -> SolverResult:
        total_start_time = time.perf_counter()
        current_state = np.asarray(current_state, dtype=float).reshape(self.nx)
        reference_state = np.asarray(reference_state, dtype=float).reshape((self.nx, self.horizon_steps + 1))
        active_obstacles = self.config_obstacles if obstacle_list is None else obstacle_list
        _ = reference_input

        z0 = self._current_flat_state(current_state)
        self._fix_initial_flat_state(z0)
        psi, vx_eps = self._update_virtual_input_constraints(current_state, reference_state)
        self._apply_shifted_warm_start(z0)
        self.model.setObjective(self._build_objective(reference_state), GRB.MINIMIZE)
        self.model.update()

        try:
            status, success = self._optimize_current_model()
        except Exception as exc:
            self.reset_warm_start()
            solve_time = time.perf_counter() - total_start_time
            return SolverResult(
                delta=0.0,
                ax=0.0,
                v1=0.0,
                v2=0.0,
                status=f"miqp_exception: {exc}",
                success=False,
                solve_time=solve_time,
                number_of_config_obstacles=len(active_obstacles),
                number_of_active_obstacles=len(active_obstacles),
                number_of_active_edges=int(sum(int(obstacle["number_of_edges"]) for obstacle in active_obstacles)),
                number_of_binary_variables=self.number_of_binary_variables,
                active_obstacle_ids=[int(obstacle["obstacle_id"]) for obstacle in active_obstacles],
            )

        solve_time = time.perf_counter() - total_start_time
        result = self._result_from_solution(
            status=f"MIQP_{status}",
            success=success,
            solve_time=solve_time,
            psi=psi,
            vx_eps=vx_eps,
            active_obstacles=active_obstacles,
        )
        if success:
            self._store_solution_for_warm_start()
        else:
            # A failed iteration makes the previous one-step shift stale.
            self.reset_warm_start()
        return result
