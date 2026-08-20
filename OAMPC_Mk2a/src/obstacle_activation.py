"""Local geometric obstacle activation for QCar2 OAMPC Mk2a."""

from __future__ import annotations

import math
from typing import Any

import numpy as np


GEOMETRY_EPSILON = 1.0e-9


# Return a finite nonnegative floating-point configuration value.
def parse_nonnegative_float(value: Any, default_value: float) -> float:
    try:
        parsed_value = float(value)
    except (TypeError, ValueError):
        return float(default_value)
    if not np.isfinite(parsed_value) or parsed_value < 0.0:
        return float(default_value)
    return parsed_value


# Return a finite positive floating-point configuration value.
def parse_positive_float(value: Any, default_value: float) -> float:
    parsed_value = parse_nonnegative_float(value, default_value)
    if parsed_value <= 0.0:
        return float(default_value)
    return parsed_value


# Return a positive integer configuration value.
def parse_positive_integer(value: Any, default_value: int) -> int:
    try:
        parsed_value = int(value)
    except (TypeError, ValueError):
        return int(default_value)
    if parsed_value <= 0:
        return int(default_value)
    return parsed_value


# Return the vehicle forward unit vector from its yaw angle.
def vehicle_forward_direction(vehicle_yaw: float) -> np.ndarray:
    return np.array([math.cos(float(vehicle_yaw)), math.sin(float(vehicle_yaw))], dtype=float)


# Return the vehicle left unit vector from its yaw angle.
def vehicle_left_direction(vehicle_yaw: float) -> np.ndarray:
    return np.array([-math.sin(float(vehicle_yaw)), math.cos(float(vehicle_yaw))], dtype=float)


# Return the distance from the rear-axle tracking point to an obstacle center.
def obstacle_center_distance(obstacle: dict[str, Any], vehicle_position: np.ndarray) -> float:
    obstacle_center = np.asarray(obstacle["center"], dtype=float).reshape(2)
    return float(np.linalg.norm(obstacle_center - vehicle_position))


# Check whether an obstacle center lies inside the configured forward field of view.
def obstacle_center_is_in_field_of_view(
    obstacle: dict[str, Any],
    vehicle_position: np.ndarray,
    vehicle_yaw: float,
    field_of_view_degrees: float,
) -> bool:
    obstacle_center = np.asarray(obstacle["center"], dtype=float).reshape(2)
    relative_position = obstacle_center - vehicle_position
    if float(np.linalg.norm(relative_position)) <= GEOMETRY_EPSILON:
        return True

    forward_direction = vehicle_forward_direction(vehicle_yaw)
    left_direction = vehicle_left_direction(vehicle_yaw)
    longitudinal_position = float(np.dot(relative_position, forward_direction))
    lateral_position = float(np.dot(relative_position, left_direction))
    relative_angle = math.atan2(lateral_position, longitudinal_position)
    half_field_of_view = 0.5 * math.radians(float(field_of_view_degrees))
    return abs(relative_angle) <= half_field_of_view + GEOMETRY_EPSILON


# Check whether the complete obstacle footprint has passed behind the vehicle by gamma.
def obstacle_has_been_passed(
    obstacle: dict[str, Any],
    vehicle_position: np.ndarray,
    vehicle_yaw: float,
    safety_margin: float,
) -> bool:
    obstacle_vertices = np.asarray(obstacle["vertices"], dtype=float).reshape((-1, 2))
    if obstacle_vertices.size == 0:
        return False

    forward_direction = vehicle_forward_direction(vehicle_yaw)
    relative_vertices = obstacle_vertices - vehicle_position.reshape(1, 2)
    longitudinal_positions = relative_vertices @ forward_direction
    furthest_forward_position = float(np.max(longitudinal_positions))
    return furthest_forward_position < -float(safety_margin)


# Maintain the active obstacle set using local range, field of view, and pass geometry.
class ObstacleActivationManager:
    # Initialize the local obstacle activation parameters and empty active set.
    def __init__(self, activation_config: dict[str, Any], safety_margin: float):
        self.activation_radius = parse_positive_float(activation_config.get("radius", 2.0), 2.0)
        self.field_of_view_degrees = parse_positive_float(
            activation_config.get("field_of_view", 180.0),
            180.0,
        )
        self.field_of_view_degrees = min(self.field_of_view_degrees, 360.0)
        self.maximum_active_obstacles = parse_positive_integer(
            activation_config.get("max_active_obstacles", 4),
            4,
        )
        self.safety_margin = parse_nonnegative_float(safety_margin, 0.25)
        self.active_obstacle_ids: set[int] = set()

    # Remove active obstacles whose complete footprint is behind the vehicle by gamma.
    def deactivate_passed_obstacles(
        self,
        obstacles: list[dict[str, Any]],
        vehicle_position: np.ndarray,
        vehicle_yaw: float,
    ) -> None:
        obstacle_lookup = {int(obstacle["obstacle_id"]): obstacle for obstacle in obstacles}
        obstacle_ids_to_deactivate: list[int] = []

        for obstacle_id in sorted(self.active_obstacle_ids):
            obstacle = obstacle_lookup.get(obstacle_id)
            if obstacle is None:
                obstacle_ids_to_deactivate.append(obstacle_id)
                continue
            if obstacle_has_been_passed(
                obstacle=obstacle,
                vehicle_position=vehicle_position,
                vehicle_yaw=vehicle_yaw,
                safety_margin=self.safety_margin,
            ):
                obstacle_ids_to_deactivate.append(obstacle_id)

        for obstacle_id in obstacle_ids_to_deactivate:
            self.active_obstacle_ids.discard(obstacle_id)

    # Return inactive obstacles whose centers are inside the activation region.
    def collect_activation_candidates(
        self,
        obstacles: list[dict[str, Any]],
        vehicle_position: np.ndarray,
        vehicle_yaw: float,
    ) -> list[tuple[float, int, dict[str, Any]]]:
        candidates: list[tuple[float, int, dict[str, Any]]] = []

        for obstacle in obstacles:
            obstacle_id = int(obstacle["obstacle_id"])
            if obstacle_id in self.active_obstacle_ids:
                continue

            center_distance = obstacle_center_distance(obstacle, vehicle_position)
            if center_distance > self.activation_radius + GEOMETRY_EPSILON:
                continue
            if not obstacle_center_is_in_field_of_view(
                obstacle=obstacle,
                vehicle_position=vehicle_position,
                vehicle_yaw=vehicle_yaw,
                field_of_view_degrees=self.field_of_view_degrees,
            ):
                continue

            candidates.append((center_distance, obstacle_id, obstacle))

        candidates.sort(key=lambda candidate: (candidate[0], candidate[1]))
        return candidates

    # Update and return the latched active obstacles for the current vehicle state.
    def update(
        self,
        obstacles: list[dict[str, Any]],
        current_state: np.ndarray,
    ) -> list[dict[str, Any]]:
        if not obstacles:
            self.active_obstacle_ids.clear()
            return []

        current_state_array = np.asarray(current_state, dtype=float).reshape(-1)
        if current_state_array.size < 3:
            raise ValueError("current_state must contain X, Y, and psi.")

        vehicle_position = np.asarray(current_state_array[:2], dtype=float)
        vehicle_yaw = float(current_state_array[2])

        self.deactivate_passed_obstacles(
            obstacles=obstacles,
            vehicle_position=vehicle_position,
            vehicle_yaw=vehicle_yaw,
        )

        available_slots = self.maximum_active_obstacles - len(self.active_obstacle_ids)
        if available_slots > 0:
            candidates = self.collect_activation_candidates(
                obstacles=obstacles,
                vehicle_position=vehicle_position,
                vehicle_yaw=vehicle_yaw,
            )
            for _center_distance, obstacle_id, _obstacle in candidates[:available_slots]:
                self.active_obstacle_ids.add(obstacle_id)

        active_obstacles = [
            obstacle
            for obstacle in obstacles
            if int(obstacle["obstacle_id"]) in self.active_obstacle_ids
        ]
        active_obstacles.sort(
            key=lambda obstacle: (
                obstacle_center_distance(obstacle, vehicle_position),
                int(obstacle["obstacle_id"]),
            )
        )
        return active_obstacles
