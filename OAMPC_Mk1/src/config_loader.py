"""Configuration loading utilities for the Mk1 QLabs OAMPC project."""

from __future__ import annotations

from pathlib import Path
from typing import Any

import yaml


REQUIRED_SECTIONS = ("project", "paths", "trajectory", "oampc", "tracking", "qlabs", "visualization")


# Return the absolute root folder of this project.
def project_root() -> Path:
    return Path(__file__).resolve().parents[1]


# Resolve a configured path relative to the project root when needed.
def resolve_project_path(root: Path, raw_path: str) -> Path:
    path = Path(raw_path).expanduser()
    if path.is_absolute():
        return path
    return (root / path).resolve()


# Validate that the loaded YAML file has the mandatory top-level sections.
def validate_required_sections(config: dict[str, Any]) -> None:
    missing_sections = [section for section in REQUIRED_SECTIONS if section not in config]
    if missing_sections:
        joined_sections = ", ".join(missing_sections)
        raise ValueError(f"Missing config section: {joined_sections}")


# Return the configured OAMPC constraints dictionary.
def oampc_constraints(config: dict[str, Any]) -> dict[str, Any]:
    return config["oampc"]["constraints"]


# Validate the most important scalar and array values used by the project.
def validate_config_values(config: dict[str, Any]) -> None:
    waypoints = config["trajectory"]["waypoints"]
    segment_times = config["trajectory"]["segment_times"]
    oampc_config = config["oampc"]
    constraints = oampc_constraints(config)
    vx_start = float(config["tracking"]["vx_start"])
    vx_max = float(constraints.get("vx_max", 1.0))

    if len(waypoints) < 2:
        raise ValueError("trajectory.waypoints must contain at least two points.")
    if len(segment_times) != len(waypoints) - 1:
        raise ValueError("trajectory.segment_times must have one value per segment.")
    if int(oampc_config["N"]) <= 0:
        raise ValueError("Prediction horizon 'N' must be positive.")
    if float(oampc_config["Ts"]) <= 0.0:
        raise ValueError("Sampling time 'Ts' must be positive.")
    if float(oampc_config["wheelbase"]) <= 0.0:
        raise ValueError("oampc.wheelbase must be positive.")
    if float(oampc_config["epsilon"]) <= 0.0:
        raise ValueError("oampc.epsilon must be positive.")
    if len(oampc_config["Q"]) != 2:
        raise ValueError("oampc.Q must contain [Q_x, Q_y].")
    if len(oampc_config["R"]) != 2:
        raise ValueError("oampc.R must contain [R_v1, R_v2].")
    if float(constraints["delta_min"]) >= float(constraints["delta_max"]):
        raise ValueError("oampc.constraints.delta_min must be smaller than delta_max.")
    if float(constraints["ax_min"]) >= float(constraints["ax_max"]):
        raise ValueError("oampc.constraints.ax_min must be smaller than ax_max.")
    if vx_start <= 0.0:
        raise ValueError("tracking.vx_start must be positive.")
    if vx_start > vx_max:
        raise ValueError("tracking.vx_start must not be larger than oampc.constraints.vx_max.")


# Load the YAML config and attach resolved project paths for internal use.
def load_config(config_path: str | Path | None = None) -> dict[str, Any]:
    root = project_root()
    path = Path(config_path).expanduser().resolve() if config_path is not None else root / "oampc_config_mk1.yaml"
    if not path.exists():
        raise FileNotFoundError(f"Config file not found: {path}")

    with path.open("r", encoding="utf-8") as file:
        config = yaml.safe_load(file) or {}

    validate_required_sections(config)
    validate_config_values(config)

    paths = config["paths"]
    config["_project_root"] = str(root)
    config["_config_path"] = str(path)
    config["_resolved_paths"] = {
        "quanser_python_dir": str(resolve_project_path(root, paths["quanser_python_dir"])),
        "generated_trajectory_dir": str(resolve_project_path(root, paths["generated_trajectory_dir"])),
        "results_dir": str(resolve_project_path(root, paths["results_dir"])),
        "generated_solver_dir": str(resolve_project_path(root, "generated_oampc_solver")),
    }
    return config
