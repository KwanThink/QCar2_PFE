#!/usr/bin/env python3
"""Flatness-based degree-5 Bezier trajectory generator for QCar2 Mk1."""

from __future__ import annotations

import json
import math
from math import comb
from pathlib import Path
from typing import Any
import numpy as np

from src.config_loader import load_config


EPS = 1.0e-9
LOW_SPEED_FOR_CURVATURE = 0.03


# Return the Euclidean norm of a vector as a float.
def vector_norm(vector: np.ndarray) -> float:
    return float(np.linalg.norm(np.asarray(vector, dtype=float)))


# Return a normalized vector, or a zero vector when the norm is too small.
def unit_vector(vector: np.ndarray) -> np.ndarray:
    value = np.asarray(vector, dtype=float)
    norm_value = vector_norm(value)
    if norm_value < EPS:
        return np.zeros_like(value)
    return value / norm_value


# Return the 2D scalar cross product of two vectors.
def cross2(first_vector: np.ndarray, second_vector: np.ndarray) -> float:
    return float(first_vector[0] * second_vector[1] - first_vector[1] * second_vector[0])


# Shift an angle by multiples of 2*pi so it stays close to a reference.
def unwrap_to_reference(angle: float, reference_angle: float) -> float:
    unwrapped_angle = float(angle)
    reference = float(reference_angle)
    while unwrapped_angle - reference > math.pi:
        unwrapped_angle -= 2.0 * math.pi
    while unwrapped_angle - reference < -math.pi:
        unwrapped_angle += 2.0 * math.pi
    return unwrapped_angle


# Validate and convert user waypoints into an Nx2 array.
def validate_waypoints(waypoints: Any) -> np.ndarray:
    points = np.asarray(waypoints, dtype=float)
    if points.ndim != 2 or points.shape[1] != 2 or points.shape[0] < 2:
        raise ValueError("trajectory.waypoints must be an Nx2 array with at least two points.")
    for index in range(points.shape[0] - 1):
        if vector_norm(points[index + 1] - points[index]) < EPS:
            raise ValueError("Consecutive trajectory waypoints must be distinct.")
    return points


# Return segment times with one positive value per segment.
def get_segment_times(points: np.ndarray, raw_segment_times: Any) -> np.ndarray:
    segment_count = len(points) - 1
    segment_times = np.asarray(raw_segment_times, dtype=float)
    if segment_times.shape != (segment_count,):
        raise ValueError("trajectory.segment_times must have one value per segment.")
    if np.any(segment_times <= 0.0):
        raise ValueError("All trajectory.segment_times values must be positive.")
    return segment_times


# Estimate the path tangent direction at a waypoint from neighbouring points.
def tangent_at(points: np.ndarray, index: int) -> np.ndarray:
    if index == 0:
        return points[1] - points[0]
    if index == len(points) - 1:
        return points[-1] - points[-2]

    incoming_direction = unit_vector(points[index] - points[index - 1])
    outgoing_direction = unit_vector(points[index + 1] - points[index])
    tangent = incoming_direction + outgoing_direction
    if vector_norm(tangent) < EPS:
        return points[index + 1] - points[index - 1]
    return tangent


# Choose continuous body headings that are compatible with endpoint yaw values.
def body_headings_from_geometry(points: np.ndarray, psi_start: float, psi_end: float) -> np.ndarray:
    headings = np.zeros(len(points), dtype=float)
    headings[0] = float(psi_start)

    for index in range(1, len(points) - 1):
        tangent = tangent_at(points, index)
        motion_heading = math.atan2(tangent[1], tangent[0])
        forward_candidate = unwrap_to_reference(motion_heading, headings[index - 1])
        reverse_candidate = unwrap_to_reference(motion_heading + math.pi, headings[index - 1])
        if abs(forward_candidate - headings[index - 1]) <= abs(reverse_candidate - headings[index - 1]):
            headings[index] = forward_candidate
        else:
            headings[index] = reverse_candidate

    headings[-1] = unwrap_to_reference(float(psi_end), headings[-2] if len(points) > 2 else headings[0])
    return np.unwrap(headings)


# Infer the signed driving direction of each segment from body heading and geometry.
def infer_segment_signs(points: np.ndarray, body_headings: np.ndarray) -> np.ndarray:
    signs = np.ones(len(points) - 1, dtype=float)
    for index in range(len(signs)):
        segment_direction = unit_vector(points[index + 1] - points[index])
        heading_direction = np.array([math.cos(body_headings[index]), math.sin(body_headings[index])], dtype=float)
        signs[index] = 1.0 if float(np.dot(segment_direction, heading_direction)) >= 0.0 else -1.0
    return signs


# Estimate signed curvature from three consecutive waypoints.
def discrete_curvature(points: np.ndarray, index: int) -> float:
    if len(points) < 3 or index in (0, len(points) - 1):
        return 0.0

    incoming_vector = points[index] - points[index - 1]
    outgoing_vector = points[index + 1] - points[index]
    chord_vector = points[index + 1] - points[index - 1]
    incoming_length = vector_norm(incoming_vector)
    outgoing_length = vector_norm(outgoing_vector)
    chord_length = vector_norm(chord_vector)
    if min(incoming_length, outgoing_length, chord_length) < EPS:
        return 0.0
    return 2.0 * cross2(incoming_vector, outgoing_vector) / (incoming_length * outgoing_length * chord_length)


# Convert segment lengths and times into signed waypoint speeds.
def waypoint_speeds_from_times(
    points: np.ndarray,
    segment_times: np.ndarray,
    segment_signs: np.ndarray,
    start_speed: float,
    end_speed: float,
) -> np.ndarray:
    segment_speeds = np.zeros(len(segment_signs), dtype=float)
    for index, sign_value in enumerate(segment_signs):
        segment_length = vector_norm(points[index + 1] - points[index])
        segment_speeds[index] = float(sign_value) * segment_length / max(segment_times[index], EPS)

    waypoint_speeds = np.zeros(len(points), dtype=float)
    waypoint_speeds[0] = float(start_speed)
    waypoint_speeds[-1] = float(end_speed)
    for index in range(1, len(points) - 1):
        waypoint_speeds[index] = 0.5 * (segment_speeds[index - 1] + segment_speeds[index])
    return waypoint_speeds


# Estimate waypoint accelerations from neighbouring signed velocities.
def waypoint_accelerations_from_speeds(vx: np.ndarray, segment_times: np.ndarray) -> np.ndarray:
    acceleration = np.zeros_like(vx)
    if len(vx) <= 1:
        return acceleration

    segment_acceleration = (vx[1:] - vx[:-1]) / segment_times
    acceleration[0] = segment_acceleration[0]
    acceleration[-1] = segment_acceleration[-1]
    for index in range(1, len(vx) - 1):
        acceleration[index] = 0.5 * (segment_acceleration[index - 1] + segment_acceleration[index])
    return acceleration


# Return the local signed direction associated with one waypoint.
def waypoint_direction_sign(index: int, waypoint_speeds: np.ndarray, segment_signs: np.ndarray) -> float:
    if abs(float(waypoint_speeds[index])) > EPS:
        return 1.0 if waypoint_speeds[index] >= 0.0 else -1.0
    if index == 0:
        return float(segment_signs[0])
    if index == len(waypoint_speeds) - 1:
        return float(segment_signs[-1])
    if segment_signs[index - 1] == segment_signs[index]:
        return float(segment_signs[index])
    return 1.0


# Expand [X, Y] waypoints into [X, Y, psi, vx, delta, ax].
def build_full_waypoints(
    points: np.ndarray,
    psi_start: float,
    psi_end: float,
    raw_segment_times: Any,
    wheelbase: float,
    start_speed: float,
    end_speed: float,
) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    segment_times = get_segment_times(points, raw_segment_times)
    body_headings = body_headings_from_geometry(points, psi_start, psi_end)
    segment_signs = infer_segment_signs(points, body_headings)
    waypoint_speeds = waypoint_speeds_from_times(points, segment_times, segment_signs, start_speed, end_speed)
    waypoint_accelerations = waypoint_accelerations_from_speeds(waypoint_speeds, segment_times)

    full_waypoints = np.zeros((len(points), 6), dtype=float)
    full_waypoints[:, :2] = points
    full_waypoints[:, 2] = body_headings
    full_waypoints[:, 3] = waypoint_speeds
    full_waypoints[:, 5] = waypoint_accelerations

    for index in range(len(points)):
        local_sign = waypoint_direction_sign(index, waypoint_speeds, segment_signs)
        full_waypoints[index, 4] = math.atan(local_sign * wheelbase * discrete_curvature(points, index))

    full_waypoints[0, 2] = float(psi_start)
    full_waypoints[-1, 2] = unwrap_to_reference(float(psi_end), full_waypoints[-2, 2] if len(points) > 2 else full_waypoints[0, 2])
    full_waypoints[:, 2] = np.unwrap(full_waypoints[:, 2])
    return full_waypoints, segment_times, segment_signs


# Evaluate all Bernstein basis functions of a chosen degree.
def bernstein(degree: int, parameter: np.ndarray) -> np.ndarray:
    return np.vstack(
        [comb(degree, index) * (1.0 - parameter) ** (degree - index) * parameter**index for index in range(degree + 1)]
    )


# Convert one full waypoint into flat-output position, velocity, and acceleration.
def waypoint_derivatives(waypoint: np.ndarray, wheelbase: float) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
    X, Y, psi, vx, delta, ax = waypoint
    tangent_direction = np.array([math.cos(psi), math.sin(psi)], dtype=float)
    normal_direction = np.array([-math.sin(psi), math.cos(psi)], dtype=float)
    psi_dot = (vx / wheelbase) * math.tan(delta)

    position = np.array([X, Y], dtype=float)
    velocity = vx * tangent_direction
    acceleration = ax * tangent_direction + vx * psi_dot * normal_direction
    return position, velocity, acceleration


# Build the six control points of one degree-5 Bezier segment.
def bezier5_control_points(start_waypoint: np.ndarray, finish_waypoint: np.ndarray, segment_time: float, wheelbase: float) -> np.ndarray:
    start_position, start_velocity, start_acceleration = waypoint_derivatives(start_waypoint, wheelbase)
    finish_position, finish_velocity, finish_acceleration = waypoint_derivatives(finish_waypoint, wheelbase)

    control_points = np.zeros((2, 6), dtype=float)
    control_points[:, 0] = start_position
    control_points[:, 1] = control_points[:, 0] + segment_time * start_velocity / 5.0
    control_points[:, 2] = 2.0 * control_points[:, 1] - control_points[:, 0] + segment_time**2 * start_acceleration / 20.0
    control_points[:, 5] = finish_position
    control_points[:, 4] = control_points[:, 5] - segment_time * finish_velocity / 5.0
    control_points[:, 3] = 2.0 * control_points[:, 4] - control_points[:, 5] + segment_time**2 * finish_acceleration / 20.0
    return control_points


# Sample one degree-5 Bezier segment and its first two derivatives.
def evaluate_bezier5(control_points: np.ndarray, segment_time: float, sample_time: float, include_endpoint: bool) -> dict[str, np.ndarray]:
    local_time = np.arange(0.0, segment_time, sample_time)
    if include_endpoint and (local_time.size == 0 or abs(local_time[-1] - segment_time) > 0.5 * sample_time):
        local_time = np.append(local_time, segment_time)
    if local_time.size == 0:
        local_time = np.array([0.0], dtype=float)

    parameter = local_time / segment_time
    first_difference = control_points[:, 1:] - control_points[:, :-1]
    second_difference = control_points[:, 2:] - 2.0 * control_points[:, 1:-1] + control_points[:, :-2]
    return {
        "t": local_time,
        "z": control_points @ bernstein(5, parameter),
        "zd": 5.0 / segment_time * (first_difference @ bernstein(4, parameter)),
        "zdd": 20.0 / segment_time**2 * (second_difference @ bernstein(3, parameter)),
    }


# Fill invalid array entries by nearest valid neighbours.
def fill_invalid_by_nearest(values: np.ndarray, default_value: float = 0.0) -> np.ndarray:
    filled_values = np.asarray(values, dtype=float).copy()
    valid = np.isfinite(filled_values)
    if not np.any(valid):
        return np.full_like(filled_values, float(default_value), dtype=float)

    valid_indices = np.where(valid)[0]
    invalid_indices = np.where(~valid)[0]
    for index in invalid_indices:
        nearest_valid = valid_indices[int(np.argmin(np.abs(valid_indices - index)))]
        filled_values[index] = filled_values[nearest_valid]
    return filled_values


# Compute a continuous body heading array from flat-output velocities.
def body_heading_from_velocity(velocity: np.ndarray, segment_signs_per_sample: np.ndarray, psi_start: float, psi_end: float) -> np.ndarray:
    Xd, Yd = velocity
    speed_abs = np.hypot(Xd, Yd)
    headings = np.zeros_like(speed_abs)
    previous_heading = float(psi_start)

    for index in range(len(speed_abs)):
        if speed_abs[index] > EPS:
            motion_heading = math.atan2(float(Yd[index]), float(Xd[index]))
            raw_body_heading = motion_heading if segment_signs_per_sample[index] > 0.0 else motion_heading + math.pi
            previous_heading = unwrap_to_reference(raw_body_heading, previous_heading)
        headings[index] = previous_heading

    headings[0] = float(psi_start)
    headings[-1] = unwrap_to_reference(float(psi_end), headings[-2] if len(headings) > 1 else headings[0])
    return np.unwrap(headings)


# Recover single-track states and inputs from flat-output samples.
def references_from_flatness(
    trajectory: dict[str, np.ndarray],
    wheelbase: float,
    segment_signs: np.ndarray,
    psi_start: float,
    psi_end: float,
    start_speed: float,
    end_speed: float,
) -> None:
    position = trajectory["z"]
    velocity = trajectory["zd"]
    acceleration = trajectory["zdd"]
    time_array = trajectory["t"]
    segment_index = np.asarray(trajectory["segment"], dtype=int)
    sign_per_sample = segment_signs[np.clip(segment_index, 0, len(segment_signs) - 1)]

    Xd, Yd = velocity
    Xdd, Ydd = acceleration
    speed_abs = np.hypot(Xd, Yd)
    signed_speed = sign_per_sample * speed_abs
    if signed_speed.size:
        signed_speed[0] = float(start_speed)
        signed_speed[-1] = float(end_speed)

    raw_curvature = np.full_like(speed_abs, np.nan, dtype=float)
    valid_speed = speed_abs > LOW_SPEED_FOR_CURVATURE
    raw_curvature[valid_speed] = (Xd[valid_speed] * Ydd[valid_speed] - Yd[valid_speed] * Xdd[valid_speed]) / speed_abs[valid_speed] ** 3
    curvature = fill_invalid_by_nearest(raw_curvature, default_value=0.0)

    if len(time_array) >= 2:
        ax = np.gradient(signed_speed, time_array, edge_order=1)
    else:
        ax = np.zeros_like(signed_speed)

    trajectory.update(
        {
            "X": position[0],
            "Y": position[1],
            "psi": body_heading_from_velocity(velocity, sign_per_sample, psi_start, psi_end),
            "vx": signed_speed,
            "delta": np.arctan(sign_per_sample * wheelbase * curvature),
            "ax": ax,
            "kappa": curvature,
        }
    )


# Generate all Bezier segments and concatenate their samples.
def generate_piecewise_bezier(
    waypoints: np.ndarray,
    segment_times: np.ndarray,
    sample_time: float,
    wheelbase: float,
    segment_signs: np.ndarray,
    psi_start: float,
    psi_end: float,
    start_speed: float,
    end_speed: float,
) -> tuple[dict[str, np.ndarray], list[np.ndarray]]:
    parts: dict[str, list[np.ndarray]] = {"t": [], "z": [], "zd": [], "zdd": [], "segment": []}
    control_points_list: list[np.ndarray] = []
    time_offset = 0.0

    for segment_index, segment_time in enumerate(segment_times):
        current_time = float(segment_time)
        control_points = bezier5_control_points(waypoints[segment_index], waypoints[segment_index + 1], current_time, wheelbase)
        segment = evaluate_bezier5(control_points, current_time, sample_time, include_endpoint=(segment_index == len(segment_times) - 1))

        control_points_list.append(control_points)
        parts["t"].append(segment["t"] + time_offset)
        parts["z"].append(segment["z"])
        parts["zd"].append(segment["zd"])
        parts["zdd"].append(segment["zdd"])
        parts["segment"].append(np.full(segment["t"].shape, segment_index, dtype=int))
        time_offset += current_time

    trajectory = {
        "t": np.concatenate(parts["t"]),
        "z": np.hstack(parts["z"]),
        "zd": np.hstack(parts["zd"]),
        "zdd": np.hstack(parts["zdd"]),
        "segment": np.concatenate(parts["segment"]),
    }
    references_from_flatness(trajectory, wheelbase, segment_signs, psi_start, psi_end, start_speed, end_speed)
    return trajectory, control_points_list


# Clip reference inputs to configured physical limits.
def apply_input_limits(trajectory: dict[str, np.ndarray], waypoints: np.ndarray, config: dict[str, Any]) -> None:
    constraints = config["oampc"]["constraints"]
    delta_min = float(constraints["delta_min"])
    delta_max = float(constraints["delta_max"])
    ax_min = float(constraints["ax_min"])
    ax_max = float(constraints["ax_max"])
    trajectory["delta"] = np.clip(trajectory["delta"], delta_min, delta_max)
    trajectory["ax"] = np.clip(trajectory["ax"], ax_min, ax_max)
    waypoints[:, 4] = np.clip(waypoints[:, 4], delta_min, delta_max)
    waypoints[:, 5] = np.clip(waypoints[:, 5], ax_min, ax_max)


# Save trajectory samples, waypoints, segment times, and Bezier control points.
def save_csv_outputs(
    trajectory: dict[str, np.ndarray],
    waypoints: np.ndarray,
    segment_times: np.ndarray,
    control_points_list: list[np.ndarray],
    output_dir: Path,
) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)
    np.savetxt(
        output_dir / "qcar2_single_track_flatness_bezier5_Mk1.csv",
        np.column_stack(
            (
                trajectory["t"],
                trajectory["segment"],
                trajectory["X"],
                trajectory["Y"],
                trajectory["psi"],
                trajectory["vx"],
                trajectory["delta"],
                trajectory["ax"],
                trajectory["zd"][0],
                trajectory["zd"][1],
                trajectory["zdd"][0],
                trajectory["zdd"][1],
                trajectory["kappa"],
            )
        ),
        delimiter=",",
        header="t,segment,X,Y,psi,vx,delta,ax,Xd,Yd,Xdd,Ydd,kappa",
        comments="",
    )

    control_point_rows = [
        [segment_index, point_index, points[0, point_index], points[1, point_index]]
        for segment_index, points in enumerate(control_points_list)
        for point_index in range(points.shape[1])
    ]
    np.savetxt(
        output_dir / "bezier5_control_points.csv",
        np.asarray(control_point_rows, dtype=float),
        delimiter=",",
        header="segment,control_point,X,Y",
        comments="",
    )
    np.savetxt(output_dir / "computed_waypoints_full.csv", waypoints, delimiter=",", header="X,Y,psi,vx,delta,ax", comments="")
    np.savetxt(
        output_dir / "computed_segment_times.csv",
        np.column_stack((np.arange(len(segment_times)), segment_times)),
        delimiter=",",
        header="segment,T",
        comments="",
    )


# Save trajectory metadata for checking and debugging.
# The main reference trajectory is saved in the CSV file.
def save_trajectory_info(
    output_dir: Path,
    config: dict[str, Any],
    segment_signs: np.ndarray,
    sample_count: int,
    total_time: float,
) -> None:
    trajectory_config = config["trajectory"]
    oampc_config = config["oampc"]

    info = {
        "sample_time": float(trajectory_config["sample_time"]),
        "wheelbase": float(oampc_config["wheelbase"]),
        "sample_count": int(sample_count),
        "total_time": float(total_time),
        "psi_start": float(trajectory_config["psi_start"]),
        "psi_end": float(trajectory_config["psi_end"]),
        "start_speed": float(trajectory_config["start_speed"]),
        "end_speed": float(trajectory_config["end_speed"]),
        "waypoints": [[float(point[0]), float(point[1])]
            for point in trajectory_config["waypoints"]
        ],
        "segment_times": [float(segment_time)
            for segment_time in trajectory_config["segment_times"]
        ],
        "segment_signs": [float(segment_sign)
            for segment_sign in segment_signs
        ],
        "heading_unwrapped": True,
    }

    info_path = output_dir / "trajectory_info.json"

    with info_path.open("w", encoding="utf-8") as file:
        json.dump(info, file, indent=2)


# Generate the configured trajectory and save all required output files.
def generate_trajectory(config: dict[str, Any] | None = None,) -> tuple[dict[str, np.ndarray], np.ndarray, np.ndarray, list[np.ndarray]]:
    if config is None:
        config = load_config()

    trajectory_config = config["trajectory"]
    oampc_config = config["oampc"]
    output_dir = Path(config["_resolved_paths"]["generated_trajectory_dir"])
    points = validate_waypoints(trajectory_config["waypoints"])
    psi_start = float(trajectory_config["psi_start"])
    psi_end = float(trajectory_config["psi_end"])
    sample_time = float(trajectory_config["sample_time"])
    wheelbase = float(oampc_config["wheelbase"])
    start_speed = float(trajectory_config["start_speed"])
    end_speed = float(trajectory_config["end_speed"])

    full_waypoints, segment_times, segment_signs = build_full_waypoints(
        points,
        psi_start,
        psi_end,
        trajectory_config["segment_times"],
        wheelbase,
        start_speed,
        end_speed,
    )
    trajectory, control_points_list = generate_piecewise_bezier(
        full_waypoints,
        segment_times,
        sample_time,
        wheelbase,
        segment_signs,
        psi_start,
        psi_end,
        start_speed,
        end_speed,
    )
    apply_input_limits(trajectory, full_waypoints, config)

    save_csv_outputs(trajectory, full_waypoints, segment_times, control_points_list, output_dir)
    save_trajectory_info(output_dir, config, segment_signs, len(trajectory["t"]), float(trajectory["t"][-1]))

    print("Generated trajectory.")
    return trajectory, full_waypoints, segment_times, control_points_list


# Run the generator as a standalone script.
def main() -> None:
    generate_trajectory()


if __name__ == "__main__":
    main()
