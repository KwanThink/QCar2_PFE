"""Gurobi nonlinear single-track model generator for QCar2 NLMPC Mk1Gu."""

from __future__ import annotations

import json
from dataclasses import dataclass
from pathlib import Path
from typing import Any

import gurobipy as gp
from gurobipy import GRB


# Store the generated model and the handles used by the online controller.
@dataclass
class GurobiNLMPCTemplate:
    model: gp.Model
    state: gp.tupledict
    control: gp.tupledict
    initial_state_constraints: list[gp.Constr]
    horizon_steps: int
    sample_time: float


# Configure the Gurobi nonlinear barrier solver.
def configure_gurobi_model(model: gp.Model, solver_config: dict[str, Any]) -> None:
    model.setParam("OutputFlag", 1 if bool(solver_config.get("output_flag", False)) else 0)
    model.setParam("OptimalityTarget", int(solver_config.get("optimality_target", 1)))
    model.setParam("NLBarIterLimit", int(solver_config.get("max_iter", 60)))

    tolerance = float(solver_config.get("tolerance", 1.0e-4))
    model.setParam("NLBarPFeasTol", tolerance)
    model.setParam("NLBarDFeasTol", tolerance)
    model.setParam("NLBarCFeasTol", tolerance)


# Return the continuous-time single-track dynamics as Gurobi expressions.
def single_track_dynamics(state: tuple[Any, Any, Any, Any], control: tuple[Any, Any], wheelbase: float) -> tuple[Any, Any, Any, Any]:
    _x, _y, psi, vx = state
    delta, ax = control
    return (
        vx * gp.nlfunc.cos(psi),
        vx * gp.nlfunc.sin(psi),
        (vx / float(wheelbase)) * gp.nlfunc.tan(delta),
        ax,
    )


# Return one RK4 prediction step as Gurobi nonlinear expressions.
def rk4_prediction(state: tuple[Any, Any, Any, Any], control: tuple[Any, Any], sample_time: float, wheelbase: float) -> tuple[Any, Any, Any, Any]:
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


# Add the initial-state and RK4 dynamic equality constraints.
def add_nlmpc_dynamics_constraints(
    model: gp.Model,
    state: gp.tupledict,
    control: gp.tupledict,
    horizon_steps: int,
    sample_time: float,
    wheelbase: float,
) -> list[gp.Constr]:
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


# Save a compact description of the generated nonlinear model.
def save_solver_metadata(output_dir: Path, config: dict[str, Any]) -> None:
    nlmpc_config = config["nlmpc"]
    metadata = {
        "solver_type": "Gurobi local nonlinear barrier",
        "state": ["X", "Y", "psi", "vx"],
        "input": ["delta", "ax"],
        "integration": "RK4",
        "horizon_steps": int(nlmpc_config["N"]),
        "sample_time": float(nlmpc_config["Ts"]),
        "wheelbase": float(nlmpc_config["wheelbase"]),
        "Q": [float(value) for value in nlmpc_config["weights"]["Q"]],
        "R": [float(value) for value in nlmpc_config["weights"]["R"]],
        "P": [float(value) for value in nlmpc_config["weights"]["P"]],
    }
    output_dir.mkdir(parents=True, exist_ok=True)
    with (output_dir / "solver_metadata.json").open("w", encoding="utf-8") as file:
        json.dump(metadata, file, indent=2)


# Build and return the reusable Gurobi nonlinear MPC model.
def build_gurobi_nlmpc_template(config: dict[str, Any]) -> GurobiNLMPCTemplate:
    nlmpc_config = config["nlmpc"]
    constraints = nlmpc_config["constraints"]
    solver_config = nlmpc_config["solver"]

    horizon_steps = int(nlmpc_config["N"])
    sample_time = float(nlmpc_config["Ts"])
    wheelbase = float(nlmpc_config["wheelbase"])
    output_dir = Path(config["_resolved_paths"]["generated_solver_dir"])

    model = gp.Model("qcar2_single_track_nlmpc_mk1gu")
    configure_gurobi_model(model, solver_config)

    state = model.addVars(horizon_steps + 1, 4, lb=-GRB.INFINITY, ub=GRB.INFINITY, name="x")
    control = model.addVars(horizon_steps, 2, lb=-GRB.INFINITY, ub=GRB.INFINITY, name="u")

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
    model.setObjective(gp.QuadExpr(), GRB.MINIMIZE)
    model.update()

    output_dir.mkdir(parents=True, exist_ok=True)
    if bool(solver_config.get("save_template", True)):
        model.write(str(output_dir / "nlmpc_template.lp"))
        save_solver_metadata(output_dir, config)

    return GurobiNLMPCTemplate(
        model=model,
        state=state,
        control=control,
        initial_state_constraints=initial_state_constraints,
        horizon_steps=horizon_steps,
        sample_time=sample_time,
    )
