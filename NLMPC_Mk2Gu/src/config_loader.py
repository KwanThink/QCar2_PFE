"""Configuration loading utilities for the QCar2 NLMPC Mk2Gu project."""

from __future__ import annotations

from pathlib import Path
from typing import Any

import yaml


REQUIRED_SECTIONS = (
    "project",
    "paths",
    "trajectory",
    "nlmpc",
    "obstacle_avoidance",
    "tracking",
    "qlabs",
    "visualization",
)
SUPPORTED_OBSTACLE_TYPES = {"cube", "cone", "cylinder", "sphere"}


def project_root() -> Path:
    """Return the absolute root folder of this project."""
    return Path(__file__).resolve().parents[1]


def resolve_project_path(root: Path, raw_path: str) -> Path:
    """Resolve a configured path relative to the project root when needed."""
    path = Path(raw_path).expanduser()
    if path.is_absolute():
        return path
    return (root / path).resolve()


def validate_numeric_vector(value: Any, expected_length: int, field_name: str) -> None:
    """Validate a fixed-length numeric vector from the YAML config."""
    if not isinstance(value, (list, tuple)) or len(value) != expected_length:
        raise ValueError(f"{field_name} must contain {expected_length} values.")
    for element in value:
        try:
            float(element)
        except (TypeError, ValueError) as exc:
            raise ValueError(f"{field_name} must contain numeric values.") from exc


def validate_obstacle_entry(obstacle: Any, index: int) -> None:
    """Validate one obstacle entry."""
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


def validate_config_values(config: dict[str, Any]) -> None:
    missing_sections = [section for section in REQUIRED_SECTIONS if section not in config]
    if missing_sections:
        raise ValueError(f"Missing config section: {', '.join(missing_sections)}")

    trajectory = config["trajectory"]
    nlmpc = config["nlmpc"]
    constraints = nlmpc["constraints"]
    obstacle_config = config["obstacle_avoidance"]

    if len(trajectory["waypoints"]) < 2:
        raise ValueError("trajectory.waypoints must contain at least two points.")
    if len(trajectory["segment_times"]) != len(trajectory["waypoints"]) - 1:
        raise ValueError("trajectory.segment_times must have one value per segment.")
    if int(nlmpc["N"]) <= 0:
        raise ValueError("Prediction horizon 'N' must be positive.")
    if float(nlmpc["Ts"]) <= 0.0:
        raise ValueError("Sampling time 'Ts' must be positive.")
    if float(nlmpc["wheelbase"]) <= 0.0:
        raise ValueError("nlmpc.wheelbase must be positive.")
    if len(nlmpc["weights"]["Q"]) != 4:
        raise ValueError("nlmpc.weights.Q must contain four state weights.")
    if len(nlmpc["weights"]["R"]) != 2:
        raise ValueError("nlmpc.weights.R must contain two input weights.")
    if len(nlmpc["weights"]["P"]) != 4:
        raise ValueError("nlmpc.weights.P must contain four terminal weights.")
    if float(constraints["vx_min"]) >= float(constraints["vx_max"]):
        raise ValueError("nlmpc.constraints.vx_min must be smaller than vx_max.")
    if float(constraints["delta_min"]) >= float(constraints["delta_max"]):
        raise ValueError("nlmpc.constraints.delta_min must be smaller than delta_max.")
    if float(constraints["ax_min"]) >= float(constraints["ax_max"]):
        raise ValueError("nlmpc.constraints.ax_min must be smaller than ax_max.")

    for key in ("M", "gamma", "slack_weight"):
        if key not in obstacle_config:
            raise ValueError(f"obstacle_avoidance.{key} is required.")
    if float(obstacle_config["M"]) <= 0.0:
        raise ValueError("obstacle_avoidance.M must be positive.")
    if float(obstacle_config["gamma"]) < 0.0:
        raise ValueError("obstacle_avoidance.gamma must be nonnegative.")
    if float(obstacle_config["slack_weight"]) <= 0.0:
        raise ValueError("obstacle_avoidance.slack_weight must be positive.")


def validate_obstacle_config(obstacle_config: dict[str, Any]) -> None:
    if not isinstance(obstacle_config, dict):
        raise ValueError("Obstacle config file must contain a YAML mapping.")
    if "obstacle_avoidance" not in obstacle_config:
        raise ValueError("Obstacle config file is missing 'obstacle_avoidance'.")

    obstacle_section = obstacle_config["obstacle_avoidance"]
    if not isinstance(obstacle_section, dict) or "obstacles" not in obstacle_section:
        raise ValueError("Obstacle config file is missing 'obstacle_avoidance.obstacles'.")

    obstacles = obstacle_section["obstacles"]
    if obstacles is None:
        obstacles = []
        obstacle_section["obstacles"] = obstacles
    if not isinstance(obstacles, list):
        raise ValueError("obstacle_avoidance.obstacles must be a list.")
    for index, obstacle in enumerate(obstacles):
        validate_obstacle_entry(obstacle, index)

def load_config(config_path: str | Path | None = None) -> dict[str, Any]:
    """Load the YAML config and attach resolved project paths."""
    root = project_root()
    path = Path(config_path).expanduser().resolve() if config_path is not None else root / "nlmpc_config_mk2gu.yaml"
    if not path.exists():
        raise FileNotFoundError(f"Config file not found: {path}")

    with path.open("r", encoding="utf-8") as file:
        config = yaml.safe_load(file) or {}

    validate_config_values(config)
    paths = config["paths"]
    config["_project_root"] = str(root)
    config["_config_path"] = str(path)
    config["_resolved_paths"] = {
        "quanser_python_dir": str(resolve_project_path(root, paths["quanser_python_dir"])),
        "generated_trajectory_dir": str(resolve_project_path(root, paths["generated_trajectory_dir"])),
        "generated_solver_dir": str(resolve_project_path(root, paths["generated_solver_dir"])),
        "results_dir": str(resolve_project_path(root, paths["results_dir"])),
    }
    return config


def load_obstacle_config(obstacle_config_path: str | Path | None = None) -> dict[str, Any]:
    root = project_root()
    path = (
        Path(obstacle_config_path).expanduser().resolve()
        if obstacle_config_path is not None
        else root / "obstacle_config_mk2gu.yaml"
    )
    if not path.exists():
        raise FileNotFoundError(f"Obstacle config file not found: {path}")

    with path.open("r", encoding="utf-8") as file:
        obstacle_config = yaml.safe_load(file) or {}

    validate_obstacle_config(obstacle_config)
    obstacle_config["_config_path"] = str(path)
    return obstacle_config
