"""Gurobi MIQP template generator for flat-coordinate QCar2 OAMPC Mk2."""

from __future__ import annotations

import json
import math
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import numpy as np
import gurobipy as gp
from gurobipy import GRB

from src.obstacle import build_obstacle_list


# Store the generated model and all handles needed by the online controller.
@dataclass
class OAMPCTemplate:
    model: gp.Model
    flat_state: gp.tupledict
    virtual_input: gp.tupledict
    slack: gp.Var
    alpha: gp.tupledict
    beta: gp.tupledict
    w_constraints: dict[str, list[gp.Constr]]
    obstacle_face_constraints: dict[tuple[int, int, int], gp.Constr]
    obstacle_sum_constraints: dict[tuple[int, int], gp.Constr]
    beta_forward_constraints: dict[tuple[int, int, int], gp.Constr]
    beta_backward_constraints: dict[tuple[int, int, int], gp.Constr]
    beta_sum_constraints: dict[tuple[int, int], gp.Constr]
    horizon_steps: int
    sample_time: float
    ad_matrix: np.ndarray
    bd_matrix: np.ndarray
    number_of_config_obstacles: int
    number_of_template_edges: int
    big_m: float
    gamma: float


# Return the discrete double-integrator matrices used in flat coordinates.
def build_flat_dynamics_matrices(sample_time: float) -> tuple[np.ndarray, np.ndarray]:
    sample_time_value = float(sample_time)
    ad_matrix = np.array(
        [
            [1.0, sample_time_value, 0.0, 0.0],
            [0.0, 1.0, 0.0, 0.0],
            [0.0, 0.0, 1.0, sample_time_value],
            [0.0, 0.0, 0.0, 1.0],
        ],
        dtype=float,
    )
    bd_matrix = np.array(
        [
            [0.5 * sample_time_value * sample_time_value, 0.0],
            [sample_time_value, 0.0],
            [0.0, 0.5 * sample_time_value * sample_time_value],
            [0.0, sample_time_value],
        ],
        dtype=float,
    )
    return ad_matrix, bd_matrix


# Configure generic Gurobi parameters for quiet online MPC calls.
def configure_gurobi_model(model: gp.Model, solver_config: dict[str, Any]) -> None:
    output_flag = 1 if bool(solver_config.get("output_flag", False)) else 0
    model.setParam("OutputFlag", output_flag)
    if "time_limit" in solver_config:
        model.setParam("TimeLimit", float(solver_config["time_limit"]))
    if "threads" in solver_config:
        model.setParam("Threads", int(solver_config["threads"]))
    if "bar_conv_tol" in solver_config:
        model.setParam("BarConvTol", float(solver_config["bar_conv_tol"]))


# Add the fixed double-integrator equality constraints to the template.
def add_flat_dynamics_constraints(model: gp.Model, flat_state: gp.tupledict, virtual_input: gp.tupledict, horizon_steps: int, sample_time: float) -> None:
    sample_time_value = float(sample_time)
    half_sample_time_squared = 0.5 * sample_time_value * sample_time_value
    for step in range(horizon_steps):
        model.addConstr(
            flat_state[step + 1, 0] == flat_state[step, 0] + sample_time_value * flat_state[step, 1] + half_sample_time_squared * virtual_input[step, 0],
            name=f"flat_dynamics_X_{step}",
        )
        model.addConstr(
            flat_state[step + 1, 1] == flat_state[step, 1] + sample_time_value * virtual_input[step, 0],
            name=f"flat_dynamics_Xdot_{step}",
        )
        model.addConstr(
            flat_state[step + 1, 2] == flat_state[step, 2] + sample_time_value * flat_state[step, 3] + half_sample_time_squared * virtual_input[step, 1],
            name=f"flat_dynamics_Y_{step}",
        )
        model.addConstr(
            flat_state[step + 1, 3] == flat_state[step, 3] + sample_time_value * virtual_input[step, 1],
            name=f"flat_dynamics_Ydot_{step}",
        )


# Add placeholder virtual-input constraints whose coefficients are updated online.
def add_virtual_input_constraint_placeholders(
    model: gp.Model,
    virtual_input: gp.tupledict,
    horizon_steps: int,
    constraints: dict[str, Any],
) -> dict[str, list[gp.Constr]]:
    tan_delta_min = math.tan(float(constraints["delta_min"]))
    tan_delta_max = math.tan(float(constraints["delta_max"]))
    ax_min = float(constraints["ax_min"])
    ax_max = float(constraints["ax_max"])

    w_constraints: dict[str, list[gp.Constr]] = {
        "steering_lower": [],
        "steering_upper": [],
        "acceleration_lower": [],
        "acceleration_upper": [],
    }

    for step in range(horizon_steps):
        steering_expression = 0.0 * virtual_input[step, 0] + 0.0 * virtual_input[step, 1]
        acceleration_expression = 0.0 * virtual_input[step, 0] + 0.0 * virtual_input[step, 1]
        w_constraints["steering_lower"].append(model.addConstr(steering_expression >= tan_delta_min, name=f"W_tan_delta_lower_{step}"))
        w_constraints["steering_upper"].append(model.addConstr(steering_expression <= tan_delta_max, name=f"W_tan_delta_upper_{step}"))
        w_constraints["acceleration_lower"].append(model.addConstr(acceleration_expression >= ax_min, name=f"W_ax_lower_{step}"))
        w_constraints["acceleration_upper"].append(model.addConstr(acceleration_expression <= ax_max, name=f"W_ax_upper_{step}"))

    return w_constraints


# Add Big-M obstacle constraints and binary variable placeholders for online activation.
def add_obstacle_constraints(
    model: gp.Model,
    flat_state: gp.tupledict,
    slack: gp.Var,
    alpha: gp.tupledict,
    beta: gp.tupledict,
    obstacles: list[dict[str, Any]],
    horizon_steps: int,
    number_of_template_edges: int,
    big_m: float,
    gamma: float,
) -> tuple[
    dict[tuple[int, int, int], gp.Constr],
    dict[tuple[int, int], gp.Constr],
    dict[tuple[int, int, int], gp.Constr],
    dict[tuple[int, int, int], gp.Constr],
    dict[tuple[int, int], gp.Constr],
]:
    obstacle_face_constraints: dict[tuple[int, int, int], gp.Constr] = {}
    obstacle_sum_constraints: dict[tuple[int, int], gp.Constr] = {}
    beta_forward_constraints: dict[tuple[int, int, int], gp.Constr] = {}
    beta_backward_constraints: dict[tuple[int, int, int], gp.Constr] = {}
    beta_sum_constraints: dict[tuple[int, int], gp.Constr] = {}
    transition_count = max(0, horizon_steps - 1)

    for obstacle_slot, obstacle in enumerate(obstacles):
        halfspace_matrix = np.asarray(obstacle["G"], dtype=float)
        halfspace_vector = np.asarray(obstacle["f"], dtype=float)
        edge_count = int(obstacle["number_of_edges"])

        for step in range(horizon_steps):
            alpha_sum = gp.quicksum(alpha[obstacle_slot, edge_slot, step] for edge_slot in range(edge_count))
            obstacle_sum_constraints[obstacle_slot, step] = model.addConstr(alpha_sum >= 1.0, name=f"obs_alpha_sum_o{obstacle_slot}_j{step}")
            for edge_slot in range(number_of_template_edges):
                alpha_variable = alpha[obstacle_slot, edge_slot, step]
                if edge_slot < edge_count:
                    expression = (
                        -float(halfspace_matrix[edge_slot, 0]) * flat_state[step + 1, 0]
                        - float(halfspace_matrix[edge_slot, 1]) * flat_state[step + 1, 2]
                        - slack
                        + float(big_m) * alpha_variable
                    )
                    right_hand_side = -float(halfspace_vector[edge_slot]) - float(gamma) + float(big_m)
                else:
                    alpha_variable.UB = 0.0
                    expression = -slack + float(big_m) * alpha_variable
                    right_hand_side = float(big_m)
                obstacle_face_constraints[obstacle_slot, edge_slot, step] = model.addConstr(
                    expression <= right_hand_side,
                    name=f"obs_face_o{obstacle_slot}_e{edge_slot}_j{step}",
                )

        for transition in range(transition_count):
            beta_sum = gp.quicksum(beta[obstacle_slot, edge_slot, transition] for edge_slot in range(edge_count))
            beta_sum_constraints[obstacle_slot, transition] = model.addConstr(beta_sum <= 1.0, name=f"obs_beta_sum_o{obstacle_slot}_j{transition}")
            for edge_slot in range(number_of_template_edges):
                beta_variable = beta[obstacle_slot, edge_slot, transition]
                if edge_slot >= edge_count:
                    beta_variable.UB = 0.0
                beta_forward_constraints[obstacle_slot, edge_slot, transition] = model.addConstr(
                    alpha[obstacle_slot, edge_slot, transition + 1]
                    - alpha[obstacle_slot, edge_slot, transition]
                    - beta_variable
                    <= 0.0,
                    name=f"obs_beta_forward_o{obstacle_slot}_e{edge_slot}_j{transition}",
                )
                beta_backward_constraints[obstacle_slot, edge_slot, transition] = model.addConstr(
                    alpha[obstacle_slot, edge_slot, transition]
                    - alpha[obstacle_slot, edge_slot, transition + 1]
                    - beta_variable
                    <= 0.0,
                    name=f"obs_beta_backward_o{obstacle_slot}_e{edge_slot}_j{transition}",
                )

    return obstacle_face_constraints, obstacle_sum_constraints, beta_forward_constraints, beta_backward_constraints, beta_sum_constraints


# Save lightweight metadata describing the generated OAMPC template.
def save_solver_metadata(
    output_dir: Path,
    config: dict[str, Any],
    ad_matrix: np.ndarray,
    bd_matrix: np.ndarray,
    number_of_config_obstacles: int,
    number_of_template_edges: int,
) -> None:
    oampc_config = config["oampc"]
    obstacle_config = config["obstacle_avoidance"]
    horizon_steps = int(oampc_config["N"])
    transition_count = max(0, horizon_steps - 1)
    metadata = {
        "solver_type": "Gurobi persistent MIQP template",
        "obstacle_constraints": True,
        "big_m_constraints": True,
        "binary_variables": True,
        "obstacle_constraints_mode": "path_progress_online_activation",
        "flat_state": ["X", "X_dot", "Y", "Y_dot"],
        "virtual_input": ["v1", "v2"],
        "horizon_steps": horizon_steps,
        "sample_time": float(oampc_config["Ts"]),
        "wheelbase": float(oampc_config["wheelbase"]),
        "epsilon": float(oampc_config["epsilon"]),
        "Q": [float(value) for value in oampc_config["Q"]],
        "R": [float(value) for value in oampc_config["R"]],
        "Ad": ad_matrix.tolist(),
        "Bd": bd_matrix.tolist(),
        "number_of_flat_states": 4,
        "number_of_virtual_inputs": 2,
        "number_of_config_obstacles": int(number_of_config_obstacles),
        "number_of_template_edges": int(number_of_template_edges),
        "number_of_alpha_variables": int(number_of_config_obstacles * number_of_template_edges * horizon_steps),
        "number_of_beta_variables": int(number_of_config_obstacles * number_of_template_edges * transition_count),
        "Big-M M": float(obstacle_config["M"]),
        "gamma": float(obstacle_config["gamma"]),
        "slack_weight": float(obstacle_config["slack_weight"]),
    }
    output_dir.mkdir(parents=True, exist_ok=True)
    with (output_dir / "solver_metadata.json").open("w", encoding="utf-8") as file:
        json.dump(metadata, file, indent=2)


# Build and return a reusable Gurobi model template for the OAMPC controller.
def build_oampc_template(config: dict[str, Any]) -> OAMPCTemplate:
    oampc_config = config["oampc"]
    obstacle_config = config["obstacle_avoidance"]
    solver_config = oampc_config.get("solver", {})
    constraints = oampc_config["constraints"]
    horizon_steps = int(oampc_config["N"])
    sample_time = float(oampc_config["Ts"])
    big_m = float(obstacle_config["M"])
    gamma = float(obstacle_config["gamma"])
    output_dir = Path(config["_resolved_paths"]["generated_solver_dir"])

    obstacles = build_obstacle_list(config)
    number_of_config_obstacles = len(obstacles)
    number_of_template_edges = max([int(obstacle["number_of_edges"]) for obstacle in obstacles], default=0)
    transition_count = max(0, horizon_steps - 1)

    model = gp.Model("qcar2_flat_coordinate_oampc_mk2_1")
    configure_gurobi_model(model, solver_config)

    flat_state = model.addVars(horizon_steps + 1, 4, lb=-GRB.INFINITY, ub=GRB.INFINITY, name="z")
    virtual_input = model.addVars(horizon_steps, 2, lb=-GRB.INFINITY, ub=GRB.INFINITY, name="v")
    slack = model.addVar(lb=0.0, ub=GRB.INFINITY, name="obstacle_slack")
    alpha = model.addVars(number_of_config_obstacles, number_of_template_edges, horizon_steps, lb=0.0, ub=1.0, vtype=GRB.BINARY, name="alpha")
    beta = model.addVars(number_of_config_obstacles, number_of_template_edges, transition_count, lb=0.0, ub=1.0, vtype=GRB.BINARY, name="beta")

    add_flat_dynamics_constraints(model, flat_state, virtual_input, horizon_steps, sample_time)
    w_constraints = add_virtual_input_constraint_placeholders(model, virtual_input, horizon_steps, constraints)
    (
        obstacle_face_constraints,
        obstacle_sum_constraints,
        beta_forward_constraints,
        beta_backward_constraints,
        beta_sum_constraints,
    ) = add_obstacle_constraints(
        model,
        flat_state,
        slack,
        alpha,
        beta,
        obstacles,
        horizon_steps,
        number_of_template_edges,
        big_m,
        gamma,
    )
    model.setObjective(gp.QuadExpr(), GRB.MINIMIZE)
    model.update()

    ad_matrix, bd_matrix = build_flat_dynamics_matrices(sample_time)
    output_dir.mkdir(parents=True, exist_ok=True)
    if bool(solver_config.get("save_template", True)):
        model.write(str(output_dir / "oampc_template.lp"))
        save_solver_metadata(output_dir, config, ad_matrix, bd_matrix, number_of_config_obstacles, number_of_template_edges)

    return OAMPCTemplate(
        model=model,
        flat_state=flat_state,
        virtual_input=virtual_input,
        slack=slack,
        alpha=alpha,
        beta=beta,
        w_constraints=w_constraints,
        obstacle_face_constraints=obstacle_face_constraints,
        obstacle_sum_constraints=obstacle_sum_constraints,
        beta_forward_constraints=beta_forward_constraints,
        beta_backward_constraints=beta_backward_constraints,
        beta_sum_constraints=beta_sum_constraints,
        horizon_steps=horizon_steps,
        sample_time=sample_time,
        ad_matrix=ad_matrix,
        bd_matrix=bd_matrix,
        number_of_config_obstacles=number_of_config_obstacles,
        number_of_template_edges=number_of_template_edges,
        big_m=big_m,
        gamma=gamma,
    )
