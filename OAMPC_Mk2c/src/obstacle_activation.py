"""Local geometric obstacle activation for QCar2 OAMPC Mk2c."""

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


def point_is_inside_obstacle_footprint(obstacle: dict[str, Any], point: np.ndarray) -> bool:
    halfspace_matrix = np.asarray(obstacle["G"], dtype=float)
    halfspace_vector = np.asarray(obstacle["f"], dtype=float).reshape(-1)
    point_array = np.asarray(point, dtype=float).reshape(2)
    return bool(np.all(halfspace_matrix @ point_array <= halfspace_vector + GEOMETRY_EPSILON))


def closest_point_on_segment(point: np.ndarray, first_point: np.ndarray, second_point: np.ndarray) -> np.ndarray:
    point_array = np.asarray(point, dtype=float).reshape(2)
    first_point_array = np.asarray(first_point, dtype=float).reshape(2)
    second_point_array = np.asarray(second_point, dtype=float).reshape(2)
    segment_vector = second_point_array - first_point_array
    segment_length_squared = float(np.dot(segment_vector, segment_vector))
    if segment_length_squared <= GEOMETRY_EPSILON:
        return first_point_array.copy()
    projection_parameter = float(np.dot(point_array - first_point_array, segment_vector) / segment_length_squared)
    projection_parameter = float(np.clip(projection_parameter, 0.0, 1.0))
    return first_point_array + projection_parameter * segment_vector


def obstacle_footprint_distance(obstacle: dict[str, Any], vehicle_position: np.ndarray) -> float:
    vehicle_position_array = np.asarray(vehicle_position, dtype=float).reshape(2)
    if point_is_inside_obstacle_footprint(obstacle, vehicle_position_array):
        return 0.0

    obstacle_vertices = np.asarray(obstacle["vertices"], dtype=float).reshape((-1, 2))
    minimum_distance = math.inf
    for vertex_index in range(len(obstacle_vertices)):
        first_point = obstacle_vertices[vertex_index]
        second_point = obstacle_vertices[(vertex_index + 1) % len(obstacle_vertices)]
        closest_point = closest_point_on_segment(vehicle_position_array, first_point, second_point)
        distance = float(np.linalg.norm(closest_point - vehicle_position_array))
        minimum_distance = min(minimum_distance, distance)
    return float(minimum_distance)


def point_is_in_activation_region(
    point: np.ndarray,
    vehicle_position: np.ndarray,
    vehicle_yaw: float,
    activation_radius: float,
    field_of_view_degrees: float,
) -> bool:
    point_array = np.asarray(point, dtype=float).reshape(2)
    vehicle_position_array = np.asarray(vehicle_position, dtype=float).reshape(2)
    relative_position = point_array - vehicle_position_array
    distance = float(np.linalg.norm(relative_position))
    if distance > float(activation_radius) + GEOMETRY_EPSILON:
        return False
    if distance <= GEOMETRY_EPSILON or float(field_of_view_degrees) >= 360.0 - GEOMETRY_EPSILON:
        return True

    forward_direction = vehicle_forward_direction(vehicle_yaw)
    left_direction = vehicle_left_direction(vehicle_yaw)
    longitudinal_position = float(np.dot(relative_position, forward_direction))
    lateral_position = float(np.dot(relative_position, left_direction))
    relative_angle = math.atan2(lateral_position, longitudinal_position)
    half_field_of_view = 0.5 * math.radians(float(field_of_view_degrees))
    return abs(relative_angle) <= half_field_of_view + GEOMETRY_EPSILON


def two_dimensional_cross(first_vector: np.ndarray, second_vector: np.ndarray) -> float:
    return float(first_vector[0] * second_vector[1] - first_vector[1] * second_vector[0])


def point_is_on_segment(point: np.ndarray, first_point: np.ndarray, second_point: np.ndarray) -> bool:
    point_array = np.asarray(point, dtype=float).reshape(2)
    first_point_array = np.asarray(first_point, dtype=float).reshape(2)
    second_point_array = np.asarray(second_point, dtype=float).reshape(2)
    segment_vector = second_point_array - first_point_array
    point_vector = point_array - first_point_array
    if abs(two_dimensional_cross(segment_vector, point_vector)) > GEOMETRY_EPSILON:
        return False
    return bool(
        np.all(point_array >= np.minimum(first_point_array, second_point_array) - GEOMETRY_EPSILON)
        and np.all(point_array <= np.maximum(first_point_array, second_point_array) + GEOMETRY_EPSILON)
    )


def segments_intersect(
    first_segment_start: np.ndarray,
    first_segment_end: np.ndarray,
    second_segment_start: np.ndarray,
    second_segment_end: np.ndarray,
) -> bool:
    first_start = np.asarray(first_segment_start, dtype=float).reshape(2)
    first_end = np.asarray(first_segment_end, dtype=float).reshape(2)
    second_start = np.asarray(second_segment_start, dtype=float).reshape(2)
    second_end = np.asarray(second_segment_end, dtype=float).reshape(2)

    first_direction = first_end - first_start
    second_direction = second_end - second_start
    first_side_start = two_dimensional_cross(first_direction, second_start - first_start)
    first_side_end = two_dimensional_cross(first_direction, second_end - first_start)
    second_side_start = two_dimensional_cross(second_direction, first_start - second_start)
    second_side_end = two_dimensional_cross(second_direction, first_end - second_start)

    if (
        first_side_start * first_side_end < -GEOMETRY_EPSILON
        and second_side_start * second_side_end < -GEOMETRY_EPSILON
    ):
        return True

    if abs(first_side_start) <= GEOMETRY_EPSILON and point_is_on_segment(second_start, first_start, first_end):
        return True
    if abs(first_side_end) <= GEOMETRY_EPSILON and point_is_on_segment(second_end, first_start, first_end):
        return True
    if abs(second_side_start) <= GEOMETRY_EPSILON and point_is_on_segment(first_start, second_start, second_end):
        return True
    if abs(second_side_end) <= GEOMETRY_EPSILON and point_is_on_segment(first_end, second_start, second_end):
        return True
    return False


def segment_circle_intersection_points(
    first_point: np.ndarray,
    second_point: np.ndarray,
    circle_center: np.ndarray,
    circle_radius: float,
) -> list[np.ndarray]:
    first_point_array = np.asarray(first_point, dtype=float).reshape(2)
    second_point_array = np.asarray(second_point, dtype=float).reshape(2)
    circle_center_array = np.asarray(circle_center, dtype=float).reshape(2)
    segment_vector = second_point_array - first_point_array
    relative_start = first_point_array - circle_center_array

    quadratic_a = float(np.dot(segment_vector, segment_vector))
    if quadratic_a <= GEOMETRY_EPSILON:
        return []

    quadratic_b = 2.0 * float(np.dot(relative_start, segment_vector))
    quadratic_c = float(np.dot(relative_start, relative_start) - float(circle_radius) ** 2)
    discriminant = quadratic_b * quadratic_b - 4.0 * quadratic_a * quadratic_c
    if discriminant < -GEOMETRY_EPSILON:
        return []

    discriminant = max(discriminant, 0.0)
    square_root_discriminant = math.sqrt(discriminant)
    denominator = 2.0 * quadratic_a
    parameters = [
        (-quadratic_b - square_root_discriminant) / denominator,
        (-quadratic_b + square_root_discriminant) / denominator,
    ]

    intersection_points: list[np.ndarray] = []
    for parameter in parameters:
        if -GEOMETRY_EPSILON <= parameter <= 1.0 + GEOMETRY_EPSILON:
            clipped_parameter = float(np.clip(parameter, 0.0, 1.0))
            intersection_point = first_point_array + clipped_parameter * segment_vector
            if not intersection_points or float(np.linalg.norm(intersection_point - intersection_points[-1])) > GEOMETRY_EPSILON:
                intersection_points.append(intersection_point)
    return intersection_points


def obstacle_footprint_activation_region(
    obstacle: dict[str, Any],
    vehicle_position: np.ndarray,
    vehicle_yaw: float,
    activation_radius: float,
    field_of_view_degrees: float,
) -> bool:
    vehicle_position_array = np.asarray(vehicle_position, dtype=float).reshape(2)
    obstacle_vertices = np.asarray(obstacle["vertices"], dtype=float).reshape((-1, 2))

    if obstacle_footprint_distance(obstacle, vehicle_position_array) > float(activation_radius) + GEOMETRY_EPSILON:
        return False
    if float(field_of_view_degrees) >= 360.0 - GEOMETRY_EPSILON:
        return True
    if point_is_inside_obstacle_footprint(obstacle, vehicle_position_array):
        return True

    for vertex in obstacle_vertices:
        if point_is_in_activation_region(
            point=vertex,
            vehicle_position=vehicle_position_array,
            vehicle_yaw=vehicle_yaw,
            activation_radius=activation_radius,
            field_of_view_degrees=field_of_view_degrees,
        ):
            return True

    half_field_of_view = 0.5 * math.radians(float(field_of_view_degrees))
    lower_boundary_angle = float(vehicle_yaw) - half_field_of_view
    upper_boundary_angle = float(vehicle_yaw) + half_field_of_view
    lower_boundary_end = vehicle_position_array + float(activation_radius) * np.array(
        [math.cos(lower_boundary_angle), math.sin(lower_boundary_angle)],
        dtype=float,
    )
    upper_boundary_end = vehicle_position_array + float(activation_radius) * np.array(
        [math.cos(upper_boundary_angle), math.sin(upper_boundary_angle)],
        dtype=float,
    )

    for vertex_index in range(len(obstacle_vertices)):
        first_point = obstacle_vertices[vertex_index]
        second_point = obstacle_vertices[(vertex_index + 1) % len(obstacle_vertices)]

        if segments_intersect(first_point, second_point, vehicle_position_array, lower_boundary_end):
            return True
        if segments_intersect(first_point, second_point, vehicle_position_array, upper_boundary_end):
            return True

        circle_intersection_points = segment_circle_intersection_points(
            first_point=first_point,
            second_point=second_point,
            circle_center=vehicle_position_array,
            circle_radius=activation_radius,
        )
        for intersection_point in circle_intersection_points:
            if point_is_in_activation_region(
                point=intersection_point,
                vehicle_position=vehicle_position_array,
                vehicle_yaw=vehicle_yaw,
                activation_radius=activation_radius,
                field_of_view_degrees=field_of_view_degrees,
            ):
                return True

    return False


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

    # Return inactive obstacles whose footprints intersect the activation region.
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

            footprint_distance = obstacle_footprint_distance(obstacle, vehicle_position)
            if footprint_distance > self.activation_radius + GEOMETRY_EPSILON:
                continue
            if not obstacle_footprint_activation_region(
                obstacle=obstacle,
                vehicle_position=vehicle_position,
                vehicle_yaw=vehicle_yaw,
                activation_radius=self.activation_radius,
                field_of_view_degrees=self.field_of_view_degrees,
            ):
                continue

            candidates.append((footprint_distance, obstacle_id, obstacle))

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
            for _footprint_distance, obstacle_id, _obstacle in candidates[:available_slots]:
                self.active_obstacle_ids.add(obstacle_id)

        active_obstacles = [
            obstacle
            for obstacle in obstacles
            if int(obstacle["obstacle_id"]) in self.active_obstacle_ids
        ]
        active_obstacles.sort(
            key=lambda obstacle: (
                obstacle_footprint_distance(obstacle, vehicle_position),
                int(obstacle["obstacle_id"]),
            )
        )
        return active_obstacles
