"""Gurobi global MINLP template generator for QCar2 NLMPC Mk2Gu."""

from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import gurobipy as gp
import numpy as np
from gurobipy import GRB

from src.obstacle import build_obstacle_list


@dataclass
class GurobiNLMPCTemplate:
    """Store the persistent model and all handles used by the online controller."""

    model: gp.Model
    state: gp.tupledict
    control: gp.tupledict
    initial_state_constraints: list[gp.Constr]
    slack: gp.Var
    alpha: gp.tupledict
    horizon_steps: int
    sample_time: float
    number_of_config_obstacles: int
    number_of_template_edges: int


def configure_gurobi_model(model: gp.Model, solver_config: dict[str, Any]) -> None:
    """Configure only generic global-solver parameters."""
    model.setParam("OutputFlag", 1 if bool(solver_config.get("output_flag", False)) else 0)
    if "time_limit" in solver_config:
        model.setParam("TimeLimit", float(solver_config["time_limit"]))
    if "threads" in solver_config:
        model.setParam("Threads", int(solver_config["threads"]))
    if "mip_gap" in solver_config:
        model.setParam("MIPGap", float(solver_config["mip_gap"]))


def single_track_dynamics(
    state: tuple[Any, Any, Any, Any],
    control: tuple[Any, Any],
    wheelbase: float,
) -> tuple[Any, Any, Any, Any]:
    """Return the continuous-time nonlinear single-track dynamics."""
    _x, _y, psi, vx = state
    delta, ax = control
    return (
        vx * gp.nlfunc.cos(psi),
        vx * gp.nlfunc.sin(psi),
        (vx / float(wheelbase)) * gp.nlfunc.tan(delta),
        ax,
    )


def rk4_prediction(
    state: tuple[Any, Any, Any, Any],
    control: tuple[Any, Any],
    sample_time: float,
    wheelbase: float,
) -> tuple[Any, Any, Any, Any]:
    """Return one explicit RK4 prediction step as Gurobi expressions."""
    h = float(sample_time)
    k1 = single_track_dynamics(state, control, wheelbase)
    state_k2 = tuple(state[index] + 0.5 * h * k1[index] for index in range(4))
    k2 = single_track_dynamics(state_k2, control, wheelbase)
    state_k3 = tuple(state[index] + 0.5 * h * k2[index] for index in range(4))
    k3 = single_track_dynamics(state_k3, control, wheelbase)
    state_k4 = tuple(state[index] + h * k3[index] for index in range(4))
    k4 = single_track_dynamics(state_k4, control, wheelbase)
    return tuple(
        state[index] + (h / 6.0) * (k1[index] + 2.0 * k2[index] + 2.0 * k3[index] + k4[index])
        for index in range(4)
    )


def add_nlmpc_dynamics_constraints(
    model: gp.Model,
    state: gp.tupledict,
    control: gp.tupledict,
    horizon_steps: int,
    sample_time: float,
    wheelbase: float,
) -> list[gp.Constr]:
    """Add the initial-state placeholders and nonlinear RK4 equalities."""
    initial_state_constraints = [
        model.addConstr(state[0, state_index] == 0.0, name=f"initial_state_{state_index}")
        for state_index in range(4)
    ]

    for step in range(horizon_steps):
        current_state = tuple(state[step, state_index] for state_index in range(4))
        current_control = tuple(control[step, input_index] for input_index in range(2))
        predicted_state = rk4_prediction(current_state, current_control, sample_time, wheelbase)
        for state_index, state_name in enumerate(("X", "Y", "psi", "vx")):
            model.addConstr(
                state[step + 1, state_index] == predicted_state[state_index],
                name=f"rk4_{state_name}_{step}",
            )
    return initial_state_constraints


def add_obstacle_constraints(
    model: gp.Model,
    state: gp.tupledict,
    slack: gp.Var,
    alpha: gp.tupledict,
    obstacles: list[dict[str, Any]],
    horizon_steps: int,
    number_of_template_edges: int,
    big_m: float,
    gamma: float,
) -> None:
    """Add always-on Big-M obstacle-avoidance constraints."""
    for obstacle_slot, obstacle in enumerate(obstacles):
        halfspace_matrix = np.asarray(obstacle["G"], dtype=float)
        halfspace_vector = np.asarray(obstacle["f"], dtype=float)
        edge_count = int(obstacle["number_of_edges"])

        for step in range(horizon_steps):
            alpha_sum = gp.quicksum(alpha[obstacle_slot, edge_slot, step] for edge_slot in range(edge_count))
            model.addConstr(alpha_sum >= 1.0, name=f"obs_alpha_sum_o{obstacle_slot}_j{step}")
            for edge_slot in range(number_of_template_edges):
                alpha_variable = alpha[obstacle_slot, edge_slot, step]
                if edge_slot < edge_count:
                    expression = (
                        -float(halfspace_matrix[edge_slot, 0]) * state[step + 1, 0]
                        - float(halfspace_matrix[edge_slot, 1]) * state[step + 1, 1]
                        - slack
                        + float(big_m) * alpha_variable
                    )
                    right_hand_side = -float(halfspace_vector[edge_slot]) - float(gamma) + float(big_m)
                else:
                    alpha_variable.UB = 0.0
                    expression = -slack + float(big_m) * alpha_variable
                    right_hand_side = float(big_m)
                model.addConstr(
                    expression <= right_hand_side,
                    name=f"obs_face_o{obstacle_slot}_e{edge_slot}_j{step}",
                )


def save_solver_metadata(
    output_dir: Path,
    config: dict[str, Any],
    number_of_config_obstacles: int,
    number_of_template_edges: int,
) -> None:
    """Save a compact description of the generated global MINLP model."""
    nlmpc = config["nlmpc"]
    obstacle_config = config["obstacle_avoidance"]
    horizon_steps = int(nlmpc["N"])
    metadata = {
        "solver_type": "Gurobi global MINLP",
        "state": ["X", "Y", "psi", "vx"],
        "input": ["delta", "ax"],
        "integration": "RK4",
        "obstacle_constraints": "Big-M with alpha binaries",
        "obstacle_constraints_mode": "all_config_obstacles_always_constrained",
        "horizon_steps": horizon_steps,
        "sample_time": float(nlmpc["Ts"]),
        "wheelbase": float(nlmpc["wheelbase"]),
        "Q": [float(value) for value in nlmpc["weights"]["Q"]],
        "R": [float(value) for value in nlmpc["weights"]["R"]],
        "P": [float(value) for value in nlmpc["weights"]["P"]],
        "number_of_config_obstacles": int(number_of_config_obstacles),
        "number_of_template_edges": int(number_of_template_edges),
        "number_of_alpha_variables": int(number_of_config_obstacles * number_of_template_edges * horizon_steps),
        "M": float(obstacle_config["M"]),
        "gamma": float(obstacle_config["gamma"]),
        "slack_weight": float(obstacle_config["slack_weight"]),
    }
    output_dir.mkdir(parents=True, exist_ok=True)
    with (output_dir / "solver_metadata.json").open("w", encoding="utf-8") as file:
        json.dump(metadata, file, indent=2)


def build_gurobi_nlmpc_template(
    config: dict[str, Any],
    obstacle_file_config: dict[str, Any],
) -> GurobiNLMPCTemplate:
    """Build the reusable nonlinear mixed-integer MPC model."""
    nlmpc = config["nlmpc"]
    constraints = nlmpc["constraints"]
    solver_config = nlmpc["solver"]
    obstacle_config = config["obstacle_avoidance"]

    horizon_steps = int(nlmpc["N"])
    sample_time = float(nlmpc["Ts"])
    wheelbase = float(nlmpc["wheelbase"])
    output_dir = Path(config["_resolved_paths"]["generated_solver_dir"])
    obstacles = build_obstacle_list(obstacle_file_config)
    number_of_config_obstacles = len(obstacles)
    number_of_template_edges = max([int(obstacle["number_of_edges"]) for obstacle in obstacles], default=0)

    model = gp.Model("qcar2_single_track_nlmpc_mk2gu")
    configure_gurobi_model(model, solver_config)

    state = model.addVars(horizon_steps + 1, 4, lb=-GRB.INFINITY, ub=GRB.INFINITY, name="x")
    control = model.addVars(horizon_steps, 2, lb=-GRB.INFINITY, ub=GRB.INFINITY, name="u")
    slack = model.addVar(lb=0.0, ub=GRB.INFINITY, name="obstacle_slack")
    alpha = model.addVars(
        number_of_config_obstacles,
        number_of_template_edges,
        horizon_steps,
        lb=0.0,
        ub=1.0,
        vtype=GRB.BINARY,
        name="alpha",
    )

    for step in range(horizon_steps + 1):
        state[step, 3].LB = float(constraints["vx_min"])
        state[step, 3].UB = float(constraints["vx_max"])
    for step in range(horizon_steps):
        control[step, 0].LB = float(constraints["delta_min"])
        control[step, 0].UB = float(constraints["delta_max"])
        control[step, 1].LB = float(constraints["ax_min"])
        control[step, 1].UB = float(constraints["ax_max"])

    initial_state_constraints = add_nlmpc_dynamics_constraints(
        model,
        state,
        control,
        horizon_steps,
        sample_time,
        wheelbase,
    )
    add_obstacle_constraints(
        model,
        state,
        slack,
        alpha,
        obstacles,
        horizon_steps,
        number_of_template_edges,
        float(obstacle_config["M"]),
        float(obstacle_config["gamma"]),
    )
    model.setObjective(gp.QuadExpr(), GRB.MINIMIZE)
    model.update()

    output_dir.mkdir(parents=True, exist_ok=True)
    if bool(solver_config.get("save_template", True)):
        model.write(str(output_dir / "nlmpc_mk2gu_template.lp"))
        save_solver_metadata(output_dir, config, number_of_config_obstacles, number_of_template_edges)

    return GurobiNLMPCTemplate(
        model=model,
        state=state,
        control=control,
        initial_state_constraints=initial_state_constraints,
        slack=slack,
        alpha=alpha,
        horizon_steps=horizon_steps,
        sample_time=sample_time,
        number_of_config_obstacles=number_of_config_obstacles,
        number_of_template_edges=number_of_template_edges,
    )
