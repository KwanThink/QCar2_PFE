"""Path-progress obstacle activation helpers for QCar2 OAMPC Mk2.1."""

from __future__ import annotations

from typing import Any

import numpy as np


# Project one obstacle footprint onto the generated reference path and store its s-interval.
def annotate_obstacle_path_interval(obstacle: dict[str, Any], reference_manager: Any) -> dict[str, Any]:
    vertices = np.asarray(obstacle["vertices"], dtype=float).reshape((-1, 2))
    s_values: list[float] = []
    for vertex in vertices:
        s_vertex, _reference_index = reference_manager.project_position_to_path(vertex)
        s_values.append(float(s_vertex))

    annotated = dict(obstacle)
    annotated["s_min"] = float(min(s_values)) if s_values else 0.0
    annotated["s_max"] = float(max(s_values)) if s_values else 0.0
    annotated["s_center"] = 0.5 * (annotated["s_min"] + annotated["s_max"])
    return annotated


# Prepare all configured obstacles once before the control loop starts.
def prepare_obstacle_activation(obstacles: list[dict[str, Any]], reference_manager: Any) -> list[dict[str, Any]]:
    annotated_obstacles = [annotate_obstacle_path_interval(obstacle, reference_manager) for obstacle in obstacles]
    annotated_obstacles.sort(key=lambda obstacle: (float(obstacle["s_min"]), int(obstacle["obstacle_id"])))
    return annotated_obstacles


# Return a positive float from a config value, with robust fallback.
def _positive_float(value: Any, default_value: float) -> float:
    try:
        parsed_value = float(value)
    except (TypeError, ValueError):
        return float(default_value)
    if not np.isfinite(parsed_value) or parsed_value < 0.0:
        return float(default_value)
    return parsed_value


# Return a positive integer from a config value, with robust fallback.
def _positive_int(value: Any, default_value: int) -> int:
    try:
        parsed_value = int(value)
    except (TypeError, ValueError):
        return int(default_value)
    return max(0, parsed_value)


# Select the subset of obstacles that should be enforced in the current MIQP solve.
def select_active_obstacles(
    obstacles: list[dict[str, Any]],
    reference_manager: Any,
    current_state: np.ndarray,
    horizon_steps: int,
    sample_time: float,
    vx_reference: float,
    activation_config: dict[str, Any] | None = None,
) -> list[dict[str, Any]]:
    if not obstacles:
        return []

    activation_config = activation_config or {}
    activation_margin = _positive_float(activation_config.get("activation_margin", 0.7), 0.7)
    pass_margin = _positive_float(activation_config.get("pass_margin", 0.4), 0.4)
    rear_margin = _positive_float(activation_config.get("rear_margin", pass_margin), pass_margin)
    deactivation_margin = max(pass_margin, rear_margin)
    max_active_obstacles = _positive_int(activation_config.get("max_active_obstacles", 1), 1)

    current_state_array = np.asarray(current_state, dtype=float).reshape(-1)
    s_current, _reference_index = reference_manager.project_position_to_path(current_state_array[:2])

    vx_current = 0.0
    if current_state_array.size >= 4 and np.isfinite(current_state_array[3]):
        vx_current = max(0.0, float(current_state_array[3]))
    vx_for_activation = max(vx_current, max(0.0, float(vx_reference)))
    activation_distance = vx_for_activation * float(horizon_steps) * float(sample_time) + activation_margin

    candidates: list[dict[str, Any]] = []
    for obstacle in obstacles:
        s_min = float(obstacle.get("s_min", 0.0))
        s_max = float(obstacle.get("s_max", s_min))

        already_passed = s_current > s_max + deactivation_margin
        too_far_ahead = s_min > s_current + activation_distance
        too_far_behind = s_max < s_current - deactivation_margin
        if already_passed or too_far_ahead or too_far_behind:
            continue

        candidates.append(obstacle)

    candidates.sort(key=lambda obstacle: (float(obstacle.get("s_min", 0.0)), int(obstacle["obstacle_id"])))
    if max_active_obstacles <= 0:
        return candidates
    return candidates[:max_active_obstacles]
