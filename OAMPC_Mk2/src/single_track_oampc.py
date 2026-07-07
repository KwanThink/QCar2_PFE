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
    def __init__(self, config: dict[str, Any]):
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

        self.config_obstacles = build_obstacle_list(config)
        self.template: OAMPCTemplate = build_oampc_template(config)
        self.model = self.template.model
        self.flat_state = self.template.flat_state
        self.virtual_input = self.template.virtual_input
        self.slack = self.template.slack
        self.alpha = self.template.alpha
        self.beta = self.template.beta
        self.w_constraints = self.template.w_constraints
        self.obstacle_face_constraints = self.template.obstacle_face_constraints
        self.obstacle_sum_constraints = self.template.obstacle_sum_constraints
        self.beta_sum_constraints = self.template.beta_sum_constraints
        self.number_of_template_edges = int(self.template.number_of_template_edges)

    # Reset any optional warm-start information before a new tracking run starts.
    def reset_warm_start(self) -> None:
        for variable in self.model.getVars():
            variable.Start = GRB.UNDEFINED

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

    # Update the flat-input constraint W from the current yaw and velocity.
    def _update_virtual_input_constraints(self, current_state: np.ndarray) -> tuple[float, float, float, float, float]:
        psi = float(current_state[2])
        vx = float(current_state[3])
        vx_eps = vx * vx + self.epsilon

        m11 = -self.wheelbase / vx_eps * math.sin(psi)
        m12 = self.wheelbase / vx_eps * math.cos(psi)
        m21 = math.cos(psi)
        m22 = math.sin(psi)

        for step in range(self.horizon_steps):
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

        return psi, vx, vx_eps, m11, m12

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
        psi, _vx, vx_eps, _m11, _m12 = self._update_virtual_input_constraints(current_state)
        self.model.setObjective(self._build_objective(reference_state), GRB.MINIMIZE)
        self.model.update()

        try:
            status, success = self._optimize_current_model()
        except Exception as exc:
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
                active_obstacle_ids=[int(obstacle["obstacle_id"]) for obstacle in active_obstacles],
            )

        solve_time = time.perf_counter() - total_start_time
        return self._result_from_solution(
            status=f"MIQP_{status}",
            success=success,
            solve_time=solve_time,
            psi=psi,
            vx_eps=vx_eps,
            active_obstacles=active_obstacles,
        )
