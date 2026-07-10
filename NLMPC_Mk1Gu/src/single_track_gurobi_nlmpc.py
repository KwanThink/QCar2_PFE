"""Gurobi nonlinear single-track NLMPC solver for QCar2 Mk1Gu tracking."""

from __future__ import annotations

import math
import time
from dataclasses import dataclass
from typing import Any

import gurobipy as gp
from gurobipy import GRB
import numpy as np

from src.gurobi_nlmpc_generator import GurobiNLMPCTemplate, build_gurobi_nlmpc_template


# Store the first optimal input and solver diagnostics.
@dataclass
class SolverResult:
    delta: float
    ax: float
    status: str
    success: bool
    solve_time: float


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


# Build and solve the original single-track NLMPC with Gurobi.
class GurobiSingleTrackNLMPC:
    # Initialize dimensions, weights, bounds, and the persistent Gurobi model.
    def __init__(self, config: dict[str, Any]):
        nlmpc_config = config["nlmpc"]
        constraints = nlmpc_config["constraints"]
        weights = nlmpc_config["weights"]

        self.horizon_steps = int(nlmpc_config["N"])
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

        self.template: GurobiNLMPCTemplate = build_gurobi_nlmpc_template(config)
        self.model = self.template.model
        self.state = self.template.state
        self.control = self.template.control
        self.initial_state_constraints = self.template.initial_state_constraints

        self.previous_states: np.ndarray | None = None
        self.previous_inputs: np.ndarray | None = None

    # Reset the warm-start memory before a new tracking phase starts.
    def reset_warm_start(self) -> None:
        self.previous_states = None
        self.previous_inputs = None
        for variable in self.model.getVars():
            variable.PStart = GRB.UNDEFINED

    # Set the measured initial state in the four equality constraints.
    def _update_initial_state(self, current_state: np.ndarray) -> None:
        for state_index in range(self.nx):
            self.initial_state_constraints[state_index].RHS = float(current_state[state_index])

    # Restore the normal vx bounds or apply the optional GO_TO_START bounds.
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

    # Build the same quadratic stage and terminal cost as NLMPC_Mk1.
    def _build_objective(self, reference_state: np.ndarray, reference_input: np.ndarray) -> gp.QuadExpr:
        objective = gp.QuadExpr()

        for step in range(self.horizon_steps):
            for state_index in range(self.nx):
                state_error = self.state[step, state_index] - float(reference_state[state_index, step])
                objective += float(self.Q[state_index]) * state_error * state_error
            for input_index in range(self.nu):
                input_error = self.control[step, input_index] - float(reference_input[input_index, step])
                objective += float(self.R[input_index]) * input_error * input_error

        for state_index in range(self.nx):
            terminal_error = self.state[self.horizon_steps, state_index] - float(reference_state[state_index, self.horizon_steps])
            objective += float(self.P[state_index]) * terminal_error * terminal_error

        return objective

    # Shift the previous optimal state and input trajectories by one step.
    def _shift_previous_solution(self) -> tuple[np.ndarray, np.ndarray] | None:
        if self.previous_states is None or self.previous_inputs is None:
            return None
        shifted_states = np.hstack((self.previous_states[:, 1:], self.previous_states[:, -1:]))
        shifted_inputs = np.hstack((self.previous_inputs[:, 1:], self.previous_inputs[:, -1:]))
        return shifted_states, shifted_inputs

    # Build an initial point from the previous solution or the current reference.
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

    # Assign the full primal starting point for the nonlinear barrier method.
    def _set_primal_start(self, initial_states: np.ndarray, initial_inputs: np.ndarray) -> None:
        for step in range(self.horizon_steps + 1):
            for state_index in range(self.nx):
                self.state[step, state_index].PStart = float(initial_states[state_index, step])
        for step in range(self.horizon_steps):
            for input_index in range(self.nu):
                self.control[step, input_index].PStart = float(initial_inputs[input_index, step])

    # Return a stable text name for Gurobi status codes.
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
            GRB.LOCALLY_OPTIMAL: "LOCALLY_OPTIMAL",
            GRB.LOCALLY_INFEASIBLE: "LOCALLY_INFEASIBLE",
        }
        return status_names.get(int(status_code), f"STATUS_{int(status_code)}")

    # Read and store the complete optimal trajectory for the next warm start.
    def _store_solution(self) -> None:
        self.previous_states = np.array(
            [
                [float(self.state[step, state_index].X) for step in range(self.horizon_steps + 1)]
                for state_index in range(self.nx)
            ],
            dtype=float,
        )
        self.previous_inputs = np.array(
            [
                [float(self.control[step, input_index].X) for step in range(self.horizon_steps)]
                for input_index in range(self.nu)
            ],
            dtype=float,
        )

    # Solve the nonlinear MPC problem and return the first optimal control input.
    def solve(
        self,
        current_state: np.ndarray,
        reference_state: np.ndarray,
        reference_input: np.ndarray,
        vx_start: float | None = None,
    ) -> SolverResult:
        current_state = np.asarray(current_state, dtype=float).reshape(self.nx)
        reference_state = np.asarray(reference_state, dtype=float).reshape((self.nx, self.horizon_steps + 1))
        reference_input = np.asarray(reference_input, dtype=float).reshape((self.nu, self.horizon_steps))

        initial_states, initial_inputs = self._initial_guess(current_state, reference_state, reference_input, vx_start)
        self._update_initial_state(current_state)
        self._update_vx_bounds(vx_start)
        self._set_primal_start(initial_states, initial_inputs)
        self.model.setObjective(self._build_objective(reference_state, reference_input), GRB.MINIMIZE)
        self.model.update()

        start_time = time.perf_counter()
        status = "not_started"
        success = False
        delta = float(initial_inputs[0, 0])
        ax = float(initial_inputs[1, 0])

        try:
            self.model.optimize()
            status_code = int(self.model.Status)
            status = self._status_name(status_code)
            success = status_code in {GRB.LOCALLY_OPTIMAL, GRB.OPTIMAL}
            if success:
                self._store_solution()
                delta = float(self.control[0, 0].X)
                ax = float(self.control[0, 1].X)
        except Exception as exc:
            status = f"exception: {exc}"
            success = False

        solve_time = time.perf_counter() - start_time
        delta = clip(delta, self.delta_min, self.delta_max)
        ax = clip(ax, self.ax_min, self.ax_max)
        return SolverResult(delta=delta, ax=ax, status=status, success=success, solve_time=solve_time)
