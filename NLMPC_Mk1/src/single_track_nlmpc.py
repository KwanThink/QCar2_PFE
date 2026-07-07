"""CasADi single-track NLMPC solver for QCar2 Mk1 tracking."""

from __future__ import annotations

import math
import time
from dataclasses import dataclass
from typing import Any

import casadi as ca
import numpy as np

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


# Build and solve a nonlinear MPC problem for the Mk1 single-track model.
class CasadiSingleTrackNLMPC:
    # Initialize dimensions, weights, bounds, and the CasADi backend.
    def __init__(self, config: dict[str, Any]):
        nlmpc_config = config["nlmpc"]
        constraints = nlmpc_config["constraints"]
        weights = nlmpc_config["weights"]
        solver_config = nlmpc_config["solver"]

        self.wheelbase = float(nlmpc_config["wheelbase"])
        self.sample_time = float(nlmpc_config["Ts"])
        self.horizon_steps = int(nlmpc_config["N"])
        self.nx = 4
        self.nu = 2

        self.vx_min = float(constraints["vx_min"])
        self.vx_max = float(constraints["vx_max"])
        self.delta_min = float(constraints["delta_min"])
        self.delta_max = float(constraints["delta_max"])
        self.ax_min = float(constraints["ax_min"])
        self.ax_max = float(constraints["ax_max"])

        self.Q = np.diag(np.asarray(weights["Q"], dtype=float))
        self.R = np.diag(np.asarray(weights["R"], dtype=float))
        self.P = np.diag(np.asarray(weights["P"], dtype=float))

        self.backend = str(solver_config["backend"]).lower()
        self.max_iter = int(solver_config["max_iter"])
        self.tolerance = float(solver_config["tolerance"])
        self.acceptable_tolerance = float(solver_config["acceptable_tolerance"])
        self.previous_solution: np.ndarray | None = None

        self._build_solver()

    # Reset the warm-start memory before a new tracking phase starts.
    def reset_warm_start(self) -> None:
        self.previous_solution = None

    # Return symbolic continuous-time single-track dynamics.
    def _dynamics(self, state: ca.MX, control: ca.MX) -> ca.MX:
        psi = state[2]
        vx = state[3]
        delta = control[0]
        ax = control[1]
        return ca.vertcat(
            vx * ca.cos(psi),
            vx * ca.sin(psi),
            vx / self.wheelbase * ca.tan(delta),
            ax,
        )

    # Integrate the symbolic model over one controller sample with RK4.
    def _rk4_step(self, state: ca.MX, control: ca.MX) -> ca.MX:
        h = self.sample_time
        k1 = self._dynamics(state, control)
        k2 = self._dynamics(state + 0.5 * h * k1, control)
        k3 = self._dynamics(state + 0.5 * h * k2, control)
        k4 = self._dynamics(state + h * k3, control)
        return state + (h / 6.0) * (k1 + 2.0 * k2 + 2.0 * k3 + k4)

    # Build the NLP objective, equality constraints, and variable bounds.
    def _build_solver(self) -> None:
        state_var = ca.MX.sym("state", self.nx, self.horizon_steps + 1)
        control_var = ca.MX.sym("control", self.nu, self.horizon_steps)

        parameter_size = self.nx + self.nx * (self.horizon_steps + 1) + self.nu * self.horizon_steps
        parameter_var = ca.MX.sym("parameter", parameter_size)

        offset = 0
        initial_state_param = parameter_var[offset : offset + self.nx]
        offset += self.nx
        reference_state_param = ca.reshape(
            parameter_var[offset : offset + self.nx * (self.horizon_steps + 1)],
            self.nx,
            self.horizon_steps + 1,
        )
        offset += self.nx * (self.horizon_steps + 1)
        reference_input_param = ca.reshape(
            parameter_var[offset : offset + self.nu * self.horizon_steps],
            self.nu,
            self.horizon_steps,
        )

        Q_ca = ca.DM(self.Q)
        R_ca = ca.DM(self.R)
        P_ca = ca.DM(self.P)

        objective = 0.0
        constraints = [state_var[:, 0] - initial_state_param]

        for step in range(self.horizon_steps):
            state_error = state_var[:, step] - reference_state_param[:, step]
            input_error = control_var[:, step] - reference_input_param[:, step]
            objective += ca.mtimes([state_error.T, Q_ca, state_error])
            objective += ca.mtimes([input_error.T, R_ca, input_error])
            predicted_next_state = self._rk4_step(state_var[:, step], control_var[:, step])
            constraints.append(state_var[:, step + 1] - predicted_next_state)

        terminal_error = state_var[:, self.horizon_steps] - reference_state_param[:, self.horizon_steps]
        objective += ca.mtimes([terminal_error.T, P_ca, terminal_error])

        decision_var = ca.vertcat(
            ca.reshape(state_var, self.nx * (self.horizon_steps + 1), 1),
            ca.reshape(control_var, self.nu * self.horizon_steps, 1),
        )
        constraint_var = ca.vertcat(*constraints)
        nlp = {"x": decision_var, "f": objective, "g": constraint_var, "p": parameter_var}

        self.solver = ca.nlpsol("single_track_nlmpc", self.backend, nlp, self._solver_options())
        self.lower_constraint = np.zeros(self.nx * (self.horizon_steps + 1), dtype=float)
        self.upper_constraint = np.zeros(self.nx * (self.horizon_steps + 1), dtype=float)
        self.lower_bound, self.upper_bound = self._build_bounds()

    # Return compact CasADi options for the selected backend.
    def _solver_options(self) -> dict[str, Any]:
        options: dict[str, Any] = {"print_time": False}
        if self.backend == "ipopt":
            options.update(
                {
                    "ipopt.print_level": 0,
                    "ipopt.sb": "yes",
                    "ipopt.max_iter": self.max_iter,
                    "ipopt.tol": self.tolerance,
                    "ipopt.acceptable_tol": self.acceptable_tolerance,
                }
            )
        elif self.backend == "sqpmethod":
            options.update(
                {
                    "max_iter": self.max_iter,
                    "print_header": False,
                    "print_iteration": False,
                    "print_status": False,
                }
            )
        return options

    # Build lower and upper bounds for all state and input decision variables.
    def _build_bounds(self) -> tuple[np.ndarray, np.ndarray]:
        variable_count = self.nx * (self.horizon_steps + 1) + self.nu * self.horizon_steps
        lower_bound = -np.inf * np.ones(variable_count, dtype=float)
        upper_bound = np.inf * np.ones(variable_count, dtype=float)

        for step in range(self.horizon_steps + 1):
            vx_index = step * self.nx + 3
            lower_bound[vx_index] = self.vx_min
            upper_bound[vx_index] = self.vx_max

        input_start = self.nx * (self.horizon_steps + 1)
        for step in range(self.horizon_steps):
            delta_index = input_start + step * self.nu
            ax_index = delta_index + 1
            lower_bound[delta_index] = self.delta_min
            upper_bound[delta_index] = self.delta_max
            lower_bound[ax_index] = self.ax_min
            upper_bound[ax_index] = self.ax_max

        return lower_bound, upper_bound
    
    # Return solver bounds, optionally with a tighter predicted vx limit.
    def _build_start_bounds(self, vx_start: float) -> tuple[np.ndarray, np.ndarray]:
        vx_start = abs(float(vx_start))
        lower_bound = self.lower_bound.copy()
        upper_bound = self.upper_bound.copy()

        # Do not tighten at i = 0 because it is fixed by the measured current state.
        for step in range(1, self.horizon_steps + 1):
            vx_index = step * self.nx + 3
            lower_bound[vx_index] = max(lower_bound[vx_index], -vx_start)
            upper_bound[vx_index] = min(upper_bound[vx_index], vx_start)

        return lower_bound, upper_bound

    # Shift the previous optimal trajectory by one step for warm-starting.
    def _shift_previous_solution(self) -> np.ndarray | None:
        if self.previous_solution is None:
            return None
        expected_size = self.lower_bound.size
        if self.previous_solution.size != expected_size:
            return None

        state_size = self.nx * (self.horizon_steps + 1)
        previous_states = self.previous_solution[:state_size].reshape((self.nx, self.horizon_steps + 1), order="F")
        previous_inputs = self.previous_solution[state_size:].reshape((self.nu, self.horizon_steps), order="F")
        shifted_states = np.hstack((previous_states[:, 1:], previous_states[:, -1:]))
        shifted_inputs = np.hstack((previous_inputs[:, 1:], previous_inputs[:, -1:]))
        return np.concatenate((shifted_states.reshape(-1, order="F"), shifted_inputs.reshape(-1, order="F")))

    # Build an initial guess from the warm start or from the current reference.
    def _initial_guess(self, current_state: np.ndarray, reference_state: np.ndarray, reference_input: np.ndarray) -> np.ndarray:
        shifted_solution = self._shift_previous_solution()
        if shifted_solution is not None:
            return shifted_solution

        initial_states = np.array(reference_state, dtype=float, copy=True)
        initial_states[:, 0] = current_state
        return np.concatenate((initial_states.reshape(-1, order="F"), reference_input.reshape(-1, order="F")))

    # Pack the current state and reference horizons into one parameter vector.
    def _parameter_vector(self, current_state: np.ndarray, reference_state: np.ndarray, reference_input: np.ndarray) -> np.ndarray:
        return np.concatenate(
            (
                np.asarray(current_state, dtype=float).reshape(-1),
                np.asarray(reference_state, dtype=float).reshape(-1, order="F"),
                np.asarray(reference_input, dtype=float).reshape(-1, order="F"),
            )
        )

    # Solve the NLMPC problem and return the first optimal control input.
    def solve(self, current_state: np.ndarray, reference_state: np.ndarray, reference_input: np.ndarray, vx_start: float | None = None) -> SolverResult:
        current_state = np.asarray(current_state, dtype=float).reshape(self.nx)
        reference_state = np.asarray(reference_state, dtype=float).reshape((self.nx, self.horizon_steps + 1))
        reference_input = np.asarray(reference_input, dtype=float).reshape((self.nu, self.horizon_steps))

        parameter = self._parameter_vector(current_state, reference_state, reference_input)
        initial_guess = self._initial_guess(current_state, reference_state, reference_input)

        if vx_start is None:
            lower_bound = self.lower_bound
            upper_bound = self.upper_bound
        else:
            lower_bound, upper_bound = self._build_start_bounds(vx_start)

        start_time = time.perf_counter()
        status = "not_started"
        success = False
        solution_vector = initial_guess
        try:
            solution = self.solver(
                x0=initial_guess,
                lbx=lower_bound,
                ubx=upper_bound,
                lbg=self.lower_constraint,
                ubg=self.upper_constraint,
                p=parameter,
            )
            solution_vector = np.asarray(solution["x"], dtype=float).reshape(-1)
            status = str(self.solver.stats().get("return_status", "unknown"))
            success = bool(self.solver.stats().get("success", False)) or status in {
                "Solve_Succeeded",
                "Solved_To_Acceptable_Level",
            }
        except Exception as exc:
            status = f"exception: {exc}"
            success = False
        solve_time = time.perf_counter() - start_time

        if success:
            self.previous_solution = solution_vector.copy()

        state_size = self.nx * (self.horizon_steps + 1)
        first_input = solution_vector[state_size : state_size + self.nu]
        delta = clip(float(first_input[0]), self.delta_min, self.delta_max)
        ax = clip(float(first_input[1]), self.ax_min, self.ax_max)
        return SolverResult(delta=delta, ax=ax, status=status, success=success, solve_time=solve_time)
