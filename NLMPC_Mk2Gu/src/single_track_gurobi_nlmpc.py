"""Gurobi global MINLP single-track NLMPC solver for QCar2 Mk2Gu."""

from __future__ import annotations

import math
import time
from dataclasses import dataclass
from typing import Any

import gurobipy as gp
import numpy as np
from gurobipy import GRB

from src.gurobi_nlmpc_generator import GurobiNLMPCTemplate, build_gurobi_nlmpc_template
from src.obstacle import build_obstacle_list


@dataclass
class SolverResult:
    """Store the first control action and global MINLP diagnostics."""

    delta: float
    ax: float
    status: str
    success: bool
    solve_time: float
    slack_value: float = 0.0
    mip_gap: float | None = None
    number_of_config_obstacles: int = 0
    number_of_obstacle_edges: int = 0


def clip(value: float, lower: float, upper: float) -> float:
    """Clip a scalar value to a closed interval."""
    return float(np.clip(value, lower, upper))


def wrap_to_pi(angle: float) -> float:
    """Wrap an angle to [-pi, pi]."""
    return float((float(angle) + math.pi) % (2.0 * math.pi) - math.pi)


def angle_error(angle: float, reference_angle: float) -> float:
    """Return the signed shortest angular error."""
    return wrap_to_pi(float(angle) - float(reference_angle))


def unwrap_to_reference(angle: float, reference_angle: float) -> float:
    """Shift an angle by multiples of 2*pi so it stays close to a reference."""
    unwrapped_angle = float(angle)
    while unwrapped_angle - float(reference_angle) > math.pi:
        unwrapped_angle -= 2.0 * math.pi
    while unwrapped_angle - float(reference_angle) < -math.pi:
        unwrapped_angle += 2.0 * math.pi
    return unwrapped_angle


class GurobiSingleTrackNLMPC:
    """Solve nonlinear single-track MPC with always-on Big-M obstacle constraints."""

    def __init__(self, config: dict[str, Any], obstacle_file_config: dict[str, Any]):
        nlmpc = config["nlmpc"]
        constraints = nlmpc["constraints"]
        weights = nlmpc["weights"]
        obstacle_config = config["obstacle_avoidance"]

        self.horizon_steps = int(nlmpc["N"])
        self.nx = 4
        self.nu = 2
        self.vx_min = float(constraints["vx_min"])
        self.vx_max = float(constraints["vx_max"])
        self.delta_min = float(constraints["delta_min"])
        self.delta_max = float(constraints["delta_max"])
        self.ax_min = float(constraints["ax_min"])
        self.ax_max = float(constraints["ax_max"])
        self.Q = np.asarray(weights["Q"], dtype=float).reshape(self.nx)
        self.R = np.asarray(weights["R"], dtype=float).reshape(self.nu)
        self.P = np.asarray(weights["P"], dtype=float).reshape(self.nx)
        self.slack_weight = float(obstacle_config["slack_weight"])

        self.config_obstacles = build_obstacle_list(obstacle_file_config)
        self.template: GurobiNLMPCTemplate = build_gurobi_nlmpc_template(config, obstacle_file_config)
        self.model = self.template.model
        self.state = self.template.state
        self.control = self.template.control
        self.initial_state_constraints = self.template.initial_state_constraints
        self.slack = self.template.slack
        self.alpha = self.template.alpha
        self.number_of_template_edges = int(self.template.number_of_template_edges)

        self.previous_states: np.ndarray | None = None
        self.previous_inputs: np.ndarray | None = None
        self.previous_alpha: np.ndarray | None = None

    def reset_warm_start(self) -> None:
        """Clear all saved trajectories and Gurobi MIP starts."""
        self.previous_states = None
        self.previous_inputs = None
        self.previous_alpha = None
        for variable in self.model.getVars():
            variable.Start = GRB.UNDEFINED

    def _update_initial_state(self, current_state: np.ndarray) -> None:
        for state_index in range(self.nx):
            self.initial_state_constraints[state_index].RHS = float(current_state[state_index])

    def _update_vx_bounds(self, vx_start: float | None) -> None:
        for step in range(1, self.horizon_steps + 1):
            lower_bound = self.vx_min
            upper_bound = self.vx_max
            if vx_start is not None:
                speed_limit = abs(float(vx_start))
                lower_bound = max(lower_bound, -speed_limit)
                upper_bound = min(upper_bound, speed_limit)
            self.state[step, 3].LB = lower_bound
            self.state[step, 3].UB = upper_bound

    def _build_objective(self, reference_state: np.ndarray, reference_input: np.ndarray) -> gp.QuadExpr:
        """Build the Mk1Gu state, input, terminal, and obstacle-slack cost."""
        objective = gp.QuadExpr()
        for step in range(self.horizon_steps):
            for state_index in range(self.nx):
                error = self.state[step, state_index] - float(reference_state[state_index, step])
                objective += float(self.Q[state_index]) * error * error
            for input_index in range(self.nu):
                error = self.control[step, input_index] - float(reference_input[input_index, step])
                objective += float(self.R[input_index]) * error * error

        for state_index in range(self.nx):
            error = self.state[self.horizon_steps, state_index] - float(reference_state[state_index, self.horizon_steps])
            objective += float(self.P[state_index]) * error * error

        objective += self.slack_weight * self.slack
        return objective

    def _shift_previous_solution(self) -> tuple[np.ndarray, np.ndarray] | None:
        if self.previous_states is None or self.previous_inputs is None:
            return None
        shifted_states = np.hstack((self.previous_states[:, 1:], self.previous_states[:, -1:]))
        shifted_inputs = np.hstack((self.previous_inputs[:, 1:], self.previous_inputs[:, -1:]))
        return shifted_states, shifted_inputs

    def _initial_guess(
        self,
        current_state: np.ndarray,
        reference_state: np.ndarray,
        reference_input: np.ndarray,
        vx_start: float | None,
    ) -> tuple[np.ndarray, np.ndarray]:
        shifted_solution = self._shift_previous_solution()
        if shifted_solution is None:
            initial_states = np.array(reference_state, dtype=float, copy=True)
            initial_inputs = np.array(reference_input, dtype=float, copy=True)
        else:
            initial_states, initial_inputs = shifted_solution

        initial_states[:, 0] = current_state
        vx_lower = self.vx_min if vx_start is None else max(self.vx_min, -abs(float(vx_start)))
        vx_upper = self.vx_max if vx_start is None else min(self.vx_max, abs(float(vx_start)))
        initial_states[3, 1:] = np.clip(initial_states[3, 1:], vx_lower, vx_upper)
        initial_inputs[0, :] = np.clip(initial_inputs[0, :], self.delta_min, self.delta_max)
        initial_inputs[1, :] = np.clip(initial_inputs[1, :], self.ax_min, self.ax_max)
        return initial_states, initial_inputs

    def _set_mip_start(self, initial_states: np.ndarray, initial_inputs: np.ndarray) -> None:
        """Assign state, input, slack, and shifted binary starts."""
        for step in range(self.horizon_steps + 1):
            for state_index in range(self.nx):
                self.state[step, state_index].Start = float(initial_states[state_index, step])
        for step in range(self.horizon_steps):
            for input_index in range(self.nu):
                self.control[step, input_index].Start = float(initial_inputs[input_index, step])
        self.slack.Start = 0.0

        for obstacle_slot, obstacle in enumerate(self.config_obstacles):
            edge_count = int(obstacle["number_of_edges"])
            for edge_slot in range(self.number_of_template_edges):
                for step in range(self.horizon_steps):
                    variable = self.alpha[obstacle_slot, edge_slot, step]
                    if edge_slot >= edge_count:
                        variable.Start = 0.0
                    elif self.previous_alpha is not None:
                        source_step = min(step + 1, self.horizon_steps - 1)
                        variable.Start = float(round(self.previous_alpha[obstacle_slot, edge_slot, source_step]))
                    else:
                        variable.Start = GRB.UNDEFINED

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
            GRB.WORK_LIMIT: "WORK_LIMIT",
            GRB.MEM_LIMIT: "MEM_LIMIT",
        }
        return status_names.get(int(status_code), f"STATUS_{int(status_code)}")

    def _solution_is_usable(self, status_code: int) -> bool:
        if int(status_code) == GRB.OPTIMAL:
            return True
        usable_statuses = {
            GRB.SUBOPTIMAL,
            GRB.TIME_LIMIT,
            GRB.NODE_LIMIT,
            GRB.SOLUTION_LIMIT,
            GRB.INTERRUPTED,
            GRB.USER_OBJ_LIMIT,
            GRB.WORK_LIMIT,
            GRB.MEM_LIMIT,
        }
        return int(status_code) in usable_statuses and int(self.model.SolCount) > 0

    def _mip_gap(self) -> float | None:
        try:
            value = float(self.model.MIPGap)
        except Exception:
            return None
        return value if np.isfinite(value) else None

    def _slack_value(self) -> float:
        try:
            return float(self.slack.X)
        except Exception:
            return 0.0

    def _store_solution(self) -> None:
        self.previous_states = np.array(
            [[float(self.state[step, state_index].X) for step in range(self.horizon_steps + 1)] for state_index in range(self.nx)],
            dtype=float,
        )
        self.previous_inputs = np.array(
            [[float(self.control[step, input_index].X) for step in range(self.horizon_steps)] for input_index in range(self.nu)],
            dtype=float,
        )

        obstacle_count = len(self.config_obstacles)
        edge_count = self.number_of_template_edges
        self.previous_alpha = np.zeros((obstacle_count, edge_count, self.horizon_steps), dtype=float)
        for obstacle_slot in range(obstacle_count):
            for edge_slot in range(edge_count):
                for step in range(self.horizon_steps):
                    self.previous_alpha[obstacle_slot, edge_slot, step] = float(self.alpha[obstacle_slot, edge_slot, step].X)

    def solve(
        self,
        current_state: np.ndarray,
        reference_state: np.ndarray,
        reference_input: np.ndarray,
        vx_start: float | None = None,
    ) -> SolverResult:
        """Solve the current global MINLP with every configured obstacle constrained."""
        total_start_time = time.perf_counter()
        current_state = np.asarray(current_state, dtype=float).reshape(self.nx)
        reference_state = np.asarray(reference_state, dtype=float).reshape((self.nx, self.horizon_steps + 1))
        reference_input = np.asarray(reference_input, dtype=float).reshape((self.nu, self.horizon_steps))

        initial_states, initial_inputs = self._initial_guess(current_state, reference_state, reference_input, vx_start)
        self._update_initial_state(current_state)
        self._update_vx_bounds(vx_start)
        self._set_mip_start(initial_states, initial_inputs)
        self.model.setObjective(self._build_objective(reference_state, reference_input), GRB.MINIMIZE)
        self.model.update()

        status = "NOT_STARTED"
        success = False
        delta = float(initial_inputs[0, 0])
        ax = float(initial_inputs[1, 0])
        try:
            self.model.optimize()
            status_code = int(self.model.Status)
            status = self._status_name(status_code)
            success = self._solution_is_usable(status_code)
            if success:
                delta = float(self.control[0, 0].X)
                ax = float(self.control[0, 1].X)
                self._store_solution()
        except Exception as exc:
            status = f"EXCEPTION: {exc}"

        solve_time = time.perf_counter() - total_start_time
        return SolverResult(
            delta=clip(delta, self.delta_min, self.delta_max),
            ax=clip(ax, self.ax_min, self.ax_max),
            status=f"MINLP_{status}",
            success=success,
            solve_time=float(solve_time),
            slack_value=self._slack_value() if success else 0.0,
            mip_gap=self._mip_gap() if success else None,
            number_of_config_obstacles=len(self.config_obstacles),
            number_of_obstacle_edges=int(sum(int(obstacle["number_of_edges"]) for obstacle in self.config_obstacles)),
        )
