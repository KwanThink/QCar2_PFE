"""Configuration loading utilities for the Mk2 QLabs OAMPC project."""

from __future__ import annotations

from pathlib import Path
from typing import Any

import yaml


REQUIRED_SECTIONS = ("project", "paths", "trajectory", "oampc", "obstacle_avoidance", "tracking", "qlabs", "visualization")
SUPPORTED_OBSTACLE_TYPES = {"cube", "cone", "cylinder", "sphere"}


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


# Validate a fixed-length numeric vector from the YAML config.
def validate_numeric_vector(value: Any, expected_length: int, field_name: str) -> None:
    if not isinstance(value, (list, tuple)) or len(value) != expected_length:
        raise ValueError(f"{field_name} must contain {expected_length} values.")
    for element in value:
        try:
            float(element)
        except (TypeError, ValueError) as exc:
            raise ValueError(f"{field_name} must contain numeric values.") from exc


# Validate one obstacle entry from obstacle_avoidance.obstacles.
def validate_obstacle_entry(obstacle: Any, index: int) -> None:
    if not isinstance(obstacle, dict):
        raise ValueError(f"obstacle_avoidance.obstacles[{index}] must be a mapping.")
    for key in ("loc", "rot", "scale", "color", "type"):
        if key not in obstacle:
            raise ValueError(f"obstacle_avoidance.obstacles[{index}] is missing '{key}'.")
    validate_numeric_vector(obstacle["loc"], 3, f"obstacle_avoidance.obstacles[{index}].loc")
    validate_numeric_vector(obstacle["rot"], 3, f"obstacle_avoidance.obstacles[{index}].rot")
    validate_numeric_vector(obstacle["scale"], 3, f"obstacle_avoidance.obstacles[{index}].scale")
    validate_numeric_vector(obstacle["color"], 3, f"obstacle_avoidance.obstacles[{index}].color")
    if any(float(value) <= 0.0 for value in obstacle["scale"]):
        raise ValueError(f"obstacle_avoidance.obstacles[{index}].scale values must be positive.")
    obstacle_type = str(obstacle["type"]).lower()
    if obstacle_type not in SUPPORTED_OBSTACLE_TYPES:
        print(f"Warning: unsupported obstacle type '{obstacle_type}' in config; cube will be used as fallback.")


# Validate the obstacle avoidance section used by the MIQP solver.
def validate_obstacle_avoidance(config: dict[str, Any]) -> None:
    obstacle_config = config["obstacle_avoidance"]
    for key in ("obstacles", "M", "gamma", "slack_weight"):
        if key not in obstacle_config:
            raise ValueError(f"obstacle_avoidance.{key} is required.")
    obstacles = obstacle_config["obstacles"]
    if obstacles is None:
        obstacles = []
        obstacle_config["obstacles"] = obstacles
    if not isinstance(obstacles, list):
        raise ValueError("obstacle_avoidance.obstacles must be a list.")
    for index, obstacle in enumerate(obstacles):
        validate_obstacle_entry(obstacle, index)
    if float(obstacle_config["M"]) <= 0.0:
        raise ValueError("obstacle_avoidance.M must be positive.")
    if float(obstacle_config["gamma"]) < 0.0:
        raise ValueError("obstacle_avoidance.gamma must be nonnegative.")
    if float(obstacle_config["slack_weight"]) <= 0.0:
        raise ValueError("obstacle_avoidance.slack_weight must be positive.")


# Validate the most important scalar and array values used by the project.
def validate_config_values(config: dict[str, Any]) -> None:
    waypoints = config["trajectory"]["waypoints"]
    segment_times = config["trajectory"]["segment_times"]
    oampc_config = config["oampc"]
    constraints = oampc_constraints(config)

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
    validate_obstacle_avoidance(config)


# Load the YAML config and attach resolved project paths for internal use.
def load_config(config_path: str | Path | None = None) -> dict[str, Any]:
    root = project_root()
    path = Path(config_path).expanduser().resolve() if config_path is not None else root / "oampc_config_mk2.yaml"
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
