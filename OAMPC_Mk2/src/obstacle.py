"""Obstacle geometry helpers for QCar2 OAMPC Mk2."""

from __future__ import annotations

import math
from typing import Any

import numpy as np


SUPPORTED_OBSTACLE_TYPES = {"cube", "cone", "cylinder", "sphere"}
ROUND_FOOTPRINT_EDGES = 6
GEOMETRY_EPSILON = 1.0e-9


# Return a two-dimensional rotation matrix for a yaw angle in radians.
def rotation_matrix_2d(yaw: float) -> np.ndarray:
    cosine = math.cos(float(yaw))
    sine = math.sin(float(yaw))
    return np.array([[cosine, -sine], [sine, cosine]], dtype=float)


# Return the signed polygon area for ordered vertices.
def polygon_signed_area(vertices: np.ndarray) -> float:
    x_coordinates = vertices[:, 0]
    y_coordinates = vertices[:, 1]
    return float(0.5 * np.sum(x_coordinates * np.roll(y_coordinates, -1) - y_coordinates * np.roll(x_coordinates, -1)))


# Ensure polygon vertices are ordered counter-clockwise.
def ensure_counter_clockwise(vertices: np.ndarray) -> np.ndarray:
    ordered_vertices = np.asarray(vertices, dtype=float).reshape((-1, 2))
    if polygon_signed_area(ordered_vertices) < 0.0:
        ordered_vertices = ordered_vertices[::-1].copy()
    return ordered_vertices


# Build a rectangle footprint from center, full size, and yaw.
def rectangle_vertices(center: np.ndarray, size: np.ndarray, yaw: float) -> np.ndarray:
    half_x = 0.5 * float(size[0])
    half_y = 0.5 * float(size[1])
    local_vertices = np.array(
        [
            [-half_x, -half_y],
            [half_x, -half_y],
            [half_x, half_y],
            [-half_x, half_y],
        ],
        dtype=float,
    )
    return ensure_counter_clockwise(center.reshape(1, 2) + local_vertices @ rotation_matrix_2d(yaw).T)


# Build a regular polygon footprint for round QLabs shapes.
def regular_polygon_vertices(center: np.ndarray, scale: np.ndarray, yaw: float, number_of_edges: int = ROUND_FOOTPRINT_EDGES) -> np.ndarray:
    physical_radius = 0.5 * max(float(scale[0]), float(scale[1]))
    polygon_radius = physical_radius / math.cos(math.pi / int(number_of_edges))
    angles = np.linspace(0.0, 2.0 * math.pi, int(number_of_edges), endpoint=False) + float(yaw)
    vertices = np.column_stack(
        (
            center[0] + polygon_radius * np.cos(angles),
            center[1] + polygon_radius * np.sin(angles),
        )
    )
    return ensure_counter_clockwise(vertices)


# Convert ordered convex polygon vertices into G p <= f half-spaces.
def polygon_to_halfspaces(vertices: np.ndarray) -> tuple[np.ndarray, np.ndarray]:
    polygon_vertices = ensure_counter_clockwise(vertices)
    centroid = np.mean(polygon_vertices, axis=0)
    normal_rows: list[np.ndarray] = []
    right_hand_side: list[float] = []

    for edge_index in range(len(polygon_vertices)):
        first_point = polygon_vertices[edge_index]
        second_point = polygon_vertices[(edge_index + 1) % len(polygon_vertices)]
        tangent = second_point - first_point
        edge_length = float(np.linalg.norm(tangent))
        if edge_length <= GEOMETRY_EPSILON:
            continue
        normal = np.array([tangent[1], -tangent[0]], dtype=float) / edge_length
        face_bound = float(np.dot(normal, first_point))
        if float(np.dot(normal, centroid)) > face_bound:
            normal = -normal
            face_bound = -face_bound
        normal_rows.append(normal)
        right_hand_side.append(face_bound)

    if not normal_rows:
        raise ValueError("Obstacle polygon does not contain a valid edge.")
    return np.vstack(normal_rows), np.asarray(right_hand_side, dtype=float)


# Normalize one obstacle dictionary and choose a cube fallback for invalid types.
def normalize_obstacle_config(raw_obstacle: dict[str, Any], obstacle_id: int) -> dict[str, Any]:
    obstacle_type = str(raw_obstacle.get("type", "cube")).lower()
    if obstacle_type not in SUPPORTED_OBSTACLE_TYPES:
        print(f"Warning: obstacle {obstacle_id} uses unsupported type '{obstacle_type}', falling back to cube.")
        obstacle_type = "cube"
    return {
        "obstacle_id": int(obstacle_id),
        "type": obstacle_type,
        "loc": [float(value) for value in raw_obstacle.get("loc", [0.0, 0.0, 0.0])],
        "rot": [float(value) for value in raw_obstacle.get("rot", [0.0, 0.0, 0.0])],
        "scale": [float(value) for value in raw_obstacle.get("scale", [0.0, 0.0, 0.0])],
        "color": [float(value) for value in raw_obstacle.get("color", [0.0, 1.0, 0.0])],
    }


# Build a complete obstacle geometry record from one normalized obstacle config.
def build_obstacle(raw_obstacle: dict[str, Any], obstacle_id: int) -> dict[str, Any]:
    normalized = normalize_obstacle_config(raw_obstacle, obstacle_id)
    center = np.asarray(normalized["loc"][:2], dtype=float)
    scale = np.asarray(normalized["scale"][:2], dtype=float)
    yaw = float(normalized["rot"][2])

    if normalized["type"] == "cube":
        vertices = rectangle_vertices(center, scale, yaw)
    else:
        # QLabs BasicShape scale is used here as the full 2D footprint size for consistency with spawn().
        vertices = regular_polygon_vertices(center, scale, yaw, ROUND_FOOTPRINT_EDGES)

    halfspace_matrix, halfspace_vector = polygon_to_halfspaces(vertices)
    normalized.update(
        {
            "center": center,
            "vertices": vertices,
            "G": halfspace_matrix,
            "f": halfspace_vector,
            "number_of_edges": int(len(halfspace_vector)),
            "active": True,
        }
    )
    return normalized


# Build all obstacle geometry records from the Mk2 YAML config.
def build_obstacle_list(config: dict[str, Any]) -> list[dict[str, Any]]:
    obstacle_config = config["obstacle_avoidance"]
    raw_obstacles = obstacle_config["obstacles"] or []
    return [build_obstacle(raw_obstacle, obstacle_id) for obstacle_id, raw_obstacle in enumerate(raw_obstacles)]


# Convert obstacle edges into log rows for obstacle_hulls.csv.
def obstacle_edges_to_rows(
    obstacles: list[dict[str, Any]],
    active_obstacle_ids: set[int],
    time_value: float,
    reference_index: int,
) -> list[dict[str, Any]]:
    rows: list[dict[str, Any]] = []
    for obstacle in obstacles:
        vertices = np.asarray(obstacle["vertices"], dtype=float)
        halfspace_matrix = np.asarray(obstacle["G"], dtype=float)
        halfspace_vector = np.asarray(obstacle["f"], dtype=float)
        obstacle_id = int(obstacle["obstacle_id"])
        active = int(obstacle_id in active_obstacle_ids)
        for edge_id in range(len(vertices)):
            first_point = vertices[edge_id]
            second_point = vertices[(edge_id + 1) % len(vertices)]
            rows.append(
                {
                    "time": float(time_value),
                    "reference_index": int(reference_index),
                    "obstacle_id": obstacle_id,
                    "edge_id": int(edge_id),
                    "x1": float(first_point[0]),
                    "y1": float(first_point[1]),
                    "x2": float(second_point[0]),
                    "y2": float(second_point[1]),
                    "g1": float(halfspace_matrix[edge_id, 0]),
                    "g2": float(halfspace_matrix[edge_id, 1]),
                    "f": float(halfspace_vector[edge_id]),
                    "active": active,
                }
            )
    return rows
