#!/usr/bin/env python3
"""Standalone QCar2 degree-7 Bezier trajectory generator.

This file is intended to run directly in VS Code on Windows:

    python qcar2_flat_bezier_Mk2.py

User inputs follow the same structure as the degree-7 Bezier generator used in
the NLMPC project:

    WAYPOINTS      : Cartesian positions [x, y]
    THETA_START    : heading angle at the first waypoint [rad]
    THETA_END      : heading angle at the last waypoint [rad]
    SEGMENT_TIMES  : travelling time of each Bezier segment [s]

The remaining quantities required by the flatness-based QCar2 formulation,

    theta, varphi, v, omega_s,

are computed automatically from waypoint geometry and segment times before the
piecewise degree-7 Bezier curves are generated.

QCar2 kinematic variables:
    state x = [x, y, theta]
    input u = [v, omega_s]
    steering angle = varphi
"""

from __future__ import annotations

from pathlib import Path
from math import comb

import matplotlib.pyplot as plt
import numpy as np

# =============================================================================
# User parameters
# =============================================================================
L = 0.25725              # QCar2 wheelbase [m]
DT = 0.02                # sample time used for the generated reference [s]
VARPHI_MAX = 0.5236      # steering angle limit [rad]
OMEGA_S_MAX = 2.0        # steering angular velocity limit [rad/s]

ZERO_ENDPOINT_STEERING = True

# Result folders are created inside the folder containing this script.
TRAJGEN_DIR = Path(__file__).resolve().parent
DEFAULT_OUTPUT_DIR = TRAJGEN_DIR / "generated_qcar2_flatness_bezier_Mk2"
OUTPUT_DIR = DEFAULT_OUTPUT_DIR

# Edit this list in normal use.
# Each waypoint contains only the Cartesian position [x, y].
WAYPOINTS = np.array(
    [
        [0.0, 0.0],
        [-1.0, 0.4],
        [-1.5, 1.5],
        [-1.0, 2.6],
        [0.0, 3.0],
        [1.0, 2.6],
        [1.5, 1.5],
        [1.0, 0.4],
        [0.0, 0.0],
    ],
    dtype=float,
)

# Boundary heading angles [rad].
# Intermediate headings are computed automatically from local tangent directions.
THETA_START = 2.7611
THETA_END = -2.7611

# Travelling time of each segment [s].
# Must contain exactly len(WAYPOINTS) - 1 values.
SEGMENT_TIMES = [
    12.0, 10.1, 10.1, 9.0,
    9.0, 10.1, 10.1, 12.0,
]

EPS = 1e-9


# =============================================================================
# Basic geometry helpers
# =============================================================================

# Compute the Euclidean norm of a vector.
def vec_norm(v: np.ndarray) -> float:
    return float(np.linalg.norm(v))

# Return a safe unit vector, or zero for near-zero vectors.
def unit(v: np.ndarray) -> np.ndarray:
    n = vec_norm(v)
    return np.zeros(2) if n < EPS else v / n

# Compute the signed 2D cross product det(a, b).
def cross2(a: np.ndarray, b: np.ndarray) -> float:
    return float(a[0] * b[1] - a[1] * b[0])


# =============================================================================
# Waypoint geometry
# =============================================================================

# Check that user waypoints are valid 2D Cartesian points.
def validate_waypoints(waypoints: np.ndarray) -> np.ndarray:
    points = np.asarray(waypoints, dtype=float)

    if points.ndim != 2 or points.shape[1] != 2:
        raise ValueError("WAYPOINTS must have shape (N, 2), with each row [x, y].")
    if len(points) < 2:
        raise ValueError("At least two waypoints are required.")

    for i, (p0, p1) in enumerate(zip(points[:-1], points[1:])):
        if vec_norm(p1 - p0) < EPS:
            raise ValueError(f"Waypoints {i} and {i + 1} have the same [x, y] position.")

    return points

# Validate one positive travelling time for each Bezier segment.
def get_segment_times(points: np.ndarray, segment_times=None) -> np.ndarray:
    if segment_times is None:
        segment_times = SEGMENT_TIMES

    times = np.asarray(segment_times, dtype=float)

    if times.ndim != 1:
        raise ValueError("SEGMENT_TIMES must be a one-dimensional list or array.")
    if len(times) != len(points) - 1:
        raise ValueError(
            "SEGMENT_TIMES must contain exactly len(WAYPOINTS) - 1 values. "
            "Each value is the travelling time T_i of one Bezier segment."
        )
    if np.any(times <= 0.0):
        raise ValueError("All SEGMENT_TIMES values must be strictly positive.")

    return times

# Estimate the path tangent direction at one waypoint.
def tangent_at(points: np.ndarray, i: int) -> np.ndarray:
    if i == 0:
        return points[1] - points[0]
    if i == len(points) - 1:
        return points[-1] - points[-2]

    incoming = unit(points[i] - points[i - 1])
    outgoing = unit(points[i + 1] - points[i])
    tangent = incoming + outgoing

    # If the incoming and outgoing directions cancel each other,
    # use the chord direction as a safe fallback.
    if vec_norm(tangent) < EPS:
        return points[i + 1] - points[i - 1]

    return tangent

# Estimate signed path curvature from three consecutive points.
def discrete_curvature(points: np.ndarray, i: int) -> float:
    n = len(points)

    if i in (0, n - 1):
        if ZERO_ENDPOINT_STEERING or n < 3:
            return 0.0
        i = 1 if i == 0 else n - 2

    a = points[i] - points[i - 1]
    b = points[i + 1] - points[i]
    c = points[i + 1] - points[i - 1]

    norm_a = vec_norm(a)
    norm_b = vec_norm(b)
    norm_c = vec_norm(c)

    if min(norm_a, norm_b, norm_c) < EPS:
        return 0.0

    return 2.0 * cross2(a, b) / (norm_a * norm_b * norm_c)

# Convert segment lengths and times into waypoint speeds.
def waypoint_speeds_from_times(points: np.ndarray, segment_times: np.ndarray) -> np.ndarray:
    num_points = len(points)
    num_segments = num_points - 1

    segment_speeds = np.zeros(num_segments, dtype=float)

    for i in range(num_segments):
        segment_length = vec_norm(points[i + 1] - points[i])
        segment_speeds[i] = segment_length / max(segment_times[i], EPS)

    waypoint_speeds = np.zeros(num_points, dtype=float)
    waypoint_speeds[0] = segment_speeds[0]
    waypoint_speeds[-1] = segment_speeds[-1]

    for i in range(1, num_points - 1):
        waypoint_speeds[i] = 0.5 * (segment_speeds[i - 1] + segment_speeds[i])

    return waypoint_speeds

# Estimate waypoint steering rate from steering angles.
def steering_velocity(varphi: np.ndarray, segment_times: np.ndarray) -> np.ndarray:
    omega_s = np.zeros_like(varphi)

    if len(varphi) > 2:
        omega_s[1:-1] = (varphi[2:] - varphi[:-2]) / (
            segment_times[:-1] + segment_times[1:]
        )

    if len(varphi) > 1:
        omega_s[0] = (varphi[1] - varphi[0]) / segment_times[0]
        omega_s[-1] = (varphi[-1] - varphi[-2]) / segment_times[-1]

    return omega_s

# Expand [x, y] waypoints into [x, y, theta, varphi, v, omega_s].
def build_waypoints(
    waypoints: np.ndarray,
    theta_start: float | None = THETA_START,
    theta_end: float | None = THETA_END,
    segment_times=None,
) -> tuple[np.ndarray, np.ndarray]:
    points = validate_waypoints(waypoints)
    times = get_segment_times(points, segment_times)

    full_waypoints = np.zeros((len(points), 6), dtype=float)
    full_waypoints[:, :2] = points

    # v_i is computed before theta/varphi because it determines motion direction.
    # In this Mk2 file, segment times produce positive forward speeds.
    full_waypoints[:, 4] = waypoint_speeds_from_times(points, times)

    for i, speed in enumerate(full_waypoints[:, 4]):
        tangent = tangent_at(points, i)

        if vec_norm(tangent) < EPS:
            raise ValueError(f"Cannot compute tangent direction at waypoint {i}.")

        sigma = 1.0 if speed >= 0.0 else -1.0
        motion_heading = np.arctan2(tangent[1], tangent[0])

        # For forward motion, theta follows the tangent direction.
        # For reverse motion, theta is opposite to the motion direction.
        full_waypoints[i, 2] = motion_heading if sigma > 0.0 else motion_heading + np.pi

        # Kinematic bicycle relation:
        #     kappa = tan(varphi) / L
        # hence
        #     varphi = arctan(L kappa)
        kappa_i = discrete_curvature(points, i)
        full_waypoints[i, 3] = np.arctan(sigma * L * kappa_i)

    if theta_start is not None:
        full_waypoints[0, 2] = float(theta_start)
    if theta_end is not None:
        full_waypoints[-1, 2] = float(theta_end)

    full_waypoints[:, 2] = np.unwrap(full_waypoints[:, 2])
    full_waypoints[:, 5] = steering_velocity(full_waypoints[:, 3], times)

    return full_waypoints, times


# =============================================================================
# Degree-7 Bezier and flatness model
# =============================================================================

# Evaluate all Bernstein basis functions of degree n.
def bernstein(n: int, s: np.ndarray) -> np.ndarray:
    return np.vstack(
        [
            comb(n, i) * (1.0 - s) ** (n - i) * s**i
            for i in range(n + 1)
        ]
    )

# Convert one waypoint into flat-output derivatives up to jerk.
def waypoint_derivatives(wp: np.ndarray) -> tuple[np.ndarray, np.ndarray, np.ndarray, np.ndarray]:
    x, y, theta, varphi, v, omega_s = wp

    e_theta = np.array([np.cos(theta), np.sin(theta)])
    n_theta = np.array([-np.sin(theta), np.cos(theta)])

    z = np.array([x, y])
    zdot = v * e_theta

    theta_dot = (v / L) * np.tan(varphi)
    theta_ddot = (v / L) * omega_s / np.cos(varphi) ** 2

    zddot = v * theta_dot * n_theta
    zdddot = -v * theta_dot**2 * e_theta + v * theta_ddot * n_theta

    return z, zdot, zddot, zdddot

# Build the eight control points of one degree-7 Bezier segment.
def bezier7_control_points(start: np.ndarray, finish: np.ndarray, T: float) -> np.ndarray:
    z0, zdot0, zddot0, zdddot0 = waypoint_derivatives(start)
    zf, zdotf, zddotf, zdddotf = waypoint_derivatives(finish)

    P = np.zeros((2, 8), dtype=float)

    # Start-side control points.
    P[:, 0] = z0
    P[:, 1] = P[:, 0] + T * zdot0 / 7.0
    P[:, 2] = 2.0 * P[:, 1] - P[:, 0] + T**2 * zddot0 / 42.0
    P[:, 3] = (
        3.0 * P[:, 2]
        - 3.0 * P[:, 1]
        + P[:, 0]
        + T**3 * zdddot0 / 210.0
    )

    # End-side control points.
    P[:, 7] = zf
    P[:, 6] = P[:, 7] - T * zdotf / 7.0
    P[:, 5] = T**2 * zddotf / 42.0 - P[:, 7] + 2.0 * P[:, 6]
    P[:, 4] = (
        P[:, 7]
        - 3.0 * P[:, 6]
        + 3.0 * P[:, 5]
        - T**3 * zdddotf / 210.0
    )

    return P

# Sample one degree-7 Bezier segment and its derivatives.
def evaluate_bezier7(P: np.ndarray, T: float, include_endpoint: bool) -> dict[str, np.ndarray]:
    T = float(T)

    t = np.arange(0.0, T, DT)
    if include_endpoint:
        if t.size == 0 or abs(t[-1] - T) > EPS:
            t = np.append(t, T)

    if t.size == 0:
        t = np.array([0.0])

    s = t / T

    d1 = P[:, 1:] - P[:, :-1]
    d2 = P[:, 2:] - 2.0 * P[:, 1:-1] + P[:, :-2]
    d3 = P[:, 3:] - 3.0 * P[:, 2:-1] + 3.0 * P[:, 1:-2] - P[:, :-3]

    return {
        "t": t,
        "z": P @ bernstein(7, s),
        "zdot": 7.0 / T * (d1 @ bernstein(6, s)),
        "zddot": 42.0 / T**2 * (d2 @ bernstein(5, s)),
        "zdddot": 210.0 / T**3 * (d3 @ bernstein(4, s)),
    }

# Recover QCar2 references from flat-output derivatives.
def references_from_flatness(traj: dict[str, np.ndarray]) -> None:
    z = traj["z"]
    zdot = traj["zdot"]
    zddot = traj["zddot"]
    zdddot = traj["zdddot"]

    sigma = np.where(traj["sigma"] >= 0.0, 1.0, -1.0)

    xdot, ydot = zdot
    xddot, yddot = zddot
    xdddot, ydddot = zdddot

    speed = np.hypot(xdot, ydot)
    speed_safe = np.maximum(speed, EPS)

    motion_heading = np.arctan2(ydot, xdot)

    kappa_num = xdot * yddot - ydot * xddot
    kappa = kappa_num / np.maximum(speed_safe**3, EPS)

    kappa_num_dot = xdot * ydddot - ydot * xdddot
    speed3_dot = 3.0 * speed_safe * (xdot * xddot + ydot * yddot)
    kappa_dot = (
        kappa_num_dot * speed_safe**3 - kappa_num * speed3_dot
    ) / np.maximum(speed_safe**6, EPS)

    traj.update(
        {
            "x": z[0],
            "y": z[1],
            "theta": np.unwrap(
                np.where(sigma > 0.0, motion_heading, motion_heading + np.pi)
            ),
            "varphi": np.arctan(sigma * L * kappa),
            "v": sigma * speed,
            "omega_s": sigma * L * kappa_dot / (1.0 + (sigma * L * kappa) ** 2),
            "kappa": kappa,
            "sigma": sigma,
        }
    )

# Choose the forward or reverse motion direction for one segment.
def segment_direction(w0: np.ndarray, w1: np.ndarray, k: int) -> float:
    v0 = w0[4]
    v1 = w1[4]

    if abs(v0) > EPS and abs(v1) > EPS and np.sign(v0) != np.sign(v1):
        raise ValueError(
            f"Segment {k} changes velocity sign. "
            "Add a stop waypoint if you later extend this script to reverse motion."
        )

    if abs(v0) > EPS:
        return 1.0 if v0 > 0.0 else -1.0
    if abs(v1) > EPS:
        return 1.0 if v1 > 0.0 else -1.0

    return 1.0

# Generate all Bezier segments and concatenate them.
def generate_piecewise_bezier(
    waypoints: np.ndarray,
    segment_times: np.ndarray,
) -> tuple[dict[str, np.ndarray], list[np.ndarray]]:
    if waypoints.ndim != 2 or waypoints.shape[1] != 6:
        raise ValueError("Full waypoints must have shape (N, 6): [x, y, theta, varphi, v, omega_s].")
    if len(segment_times) != len(waypoints) - 1:
        raise ValueError("segment_times must contain len(waypoints) - 1 values.")

    parts = {
        "t": [],
        "z": [],
        "zdot": [],
        "zddot": [],
        "zdddot": [],
        "sigma": [],
        "segment": [],
    }
    control_points: list[np.ndarray] = []
    time_offset = 0.0

    for k, T in enumerate(segment_times):
        T = float(T)
        if T <= 0.0:
            raise ValueError(f"segment_times[{k}] must be strictly positive.")

        P = bezier7_control_points(waypoints[k], waypoints[k + 1], T)
        seg = evaluate_bezier7(P, T, include_endpoint=(k == len(segment_times) - 1))
        sigma = segment_direction(waypoints[k], waypoints[k + 1], k)

        control_points.append(P)

        parts["t"].append(seg["t"] + time_offset)
        parts["z"].append(seg["z"])
        parts["zdot"].append(seg["zdot"])
        parts["zddot"].append(seg["zddot"])
        parts["zdddot"].append(seg["zdddot"])
        parts["sigma"].append(np.full_like(seg["t"], sigma, dtype=float))
        parts["segment"].append(np.full_like(seg["t"], k, dtype=int))

        time_offset += T

    traj = {
        "t": np.concatenate(parts["t"]),
        "z": np.hstack(parts["z"]),
        "zdot": np.hstack(parts["zdot"]),
        "zddot": np.hstack(parts["zddot"]),
        "zdddot": np.hstack(parts["zdddot"]),
        "sigma": np.concatenate(parts["sigma"]),
        "segment": np.concatenate(parts["segment"]),
    }

    references_from_flatness(traj)
    return traj, control_points


# =============================================================================
# Save CSV files and plots
# =============================================================================

# Save trajectory, waypoints, segment times, and control points.
def save_csv_outputs(
    traj: dict[str, np.ndarray],
    waypoints: np.ndarray,
    times: np.ndarray,
    cps: list[np.ndarray],
    output_dir: Path,
) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)

    np.savetxt(
        output_dir / "qcar2_flatness_bezier7_auto.csv",
        np.column_stack(
            (
                traj["t"],
                traj["segment"],
                traj["x"],
                traj["y"],
                traj["theta"],
                traj["varphi"],
                traj["v"],
                traj["omega_s"],
                traj["zdot"][0],
                traj["zdot"][1],
                traj["zddot"][0],
                traj["zddot"][1],
                traj["zdddot"][0],
                traj["zdddot"][1],
                traj["kappa"],
            )
        ),
        delimiter=",",
        header="t,segment,x,y,theta,varphi,v,omega_s,xd,yd,xdd,ydd,xddd,yddd,kappa",
        comments="",
    )

    control_point_rows = [
        [segment, point_id, P[0, point_id], P[1, point_id]]
        for segment, P in enumerate(cps)
        for point_id in range(P.shape[1])
    ]

    np.savetxt(
        output_dir / "bezier7_control_points.csv",
        control_point_rows,
        delimiter=",",
        header="segment,control_point,x,y",
        comments="",
    )

    np.savetxt(
        output_dir / "computed_waypoints_full.csv",
        waypoints,
        delimiter=",",
        header="x,y,theta,varphi,v,omega_s",
        comments="",
    )

    np.savetxt(
        output_dir / "computed_segment_times.csv",
        np.column_stack((np.arange(len(times)), times)),
        delimiter=",",
        header="segment,T",
        comments="",
    )

# Save diagnostic plots for path, states, inputs, and curvature.
def save_plots(
    traj: dict[str, np.ndarray],
    waypoints: np.ndarray,
    cps: list[np.ndarray],
    output_dir: Path,
) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)

    # Format and save the current figure.
    def finish(name: str, xlabel: str, ylabel: str, title: str) -> None:
        plt.xlabel(xlabel)
        plt.ylabel(ylabel)
        plt.title(title)
        plt.grid(True)
        plt.tight_layout()
        plt.savefig(output_dir / name, dpi=180)
        plt.close()

    plt.figure()
    plt.plot(traj["x"], traj["y"], label="Bezier trajectory")

    for k, P in enumerate(cps):
        plt.plot(P[0], P[1], "--o", label="Control polygon" if k == 0 else None)

    plt.plot(waypoints[:, 0], waypoints[:, 1], "ro", label="Waypoints")
    plt.axis("equal")
    plt.legend()
    finish(
        "trajectory_xy.png",
        "x [m]",
        "y [m]",
        "QCar2 piecewise degree-7 Bezier trajectory",
    )

    for key, ylabel, title, filename in [
        ("theta", "theta [rad]", "Heading angle", "heading.png"),
        ("v", "v [m/s]", "Longitudinal velocity", "speed.png"),
        ("varphi", "varphi [rad]", "Steering angle", "steering_angle.png"),
        ("omega_s", "omega_s [rad/s]", "Steering angular velocity", "steering_angular_velocity.png"),
        ("kappa", "kappa [1/m]", "Path curvature", "curvature.png"),
    ]:
        plt.figure()
        plt.plot(traj["t"], traj[key])

        if key == "varphi":
            plt.axhline(VARPHI_MAX, linestyle="--")
            plt.axhline(-VARPHI_MAX, linestyle="--")

        if key == "omega_s":
            plt.axhline(OMEGA_S_MAX, linestyle="--")
            plt.axhline(-OMEGA_S_MAX, linestyle="--")

        finish(filename, "t [s]", ylabel, title)

# Save all outputs and print a compact feasibility summary.
def save_outputs(
    traj: dict[str, np.ndarray],
    waypoints: np.ndarray,
    times: np.ndarray,
    cps: list[np.ndarray],
    output_dir: str | Path = DEFAULT_OUTPUT_DIR,
    generate_plots: bool = True,
) -> None:
    output_dir = Path(output_dir)
    output_dir.mkdir(parents=True, exist_ok=True)

    save_csv_outputs(traj, waypoints, times, cps, output_dir)

    if generate_plots:
        save_plots(traj, waypoints, cps, output_dir)

    max_speed = float(np.max(np.abs(traj["v"])))
    max_varphi = float(np.max(np.abs(traj["varphi"])))
    max_omega_s = float(np.max(np.abs(traj["omega_s"])))

    print("Generated QCar2 piecewise degree-7 Bezier trajectory")
    print(f"Output folder        : {output_dir}")
    print(f"Waypoints / segments : {len(waypoints)} / {len(times)}")
    print(f"Total time           : {traj['t'][-1]:.4f} s")
    print(f"Max |v|              : {max_speed:.4f} m/s")
    print(f"Max |varphi|         : {max_varphi:.4f} rad")
    print(f"Max |omega_s|        : {max_omega_s:.4f} rad/s")

    if np.max(np.abs(waypoints[:, 3])) > VARPHI_MAX:
        print("WARNING: waypoint steering angle limit exceeded. Adjust x,y waypoints.")
    if max_varphi > VARPHI_MAX:
        print("WARNING: trajectory steering angle limit exceeded. Adjust x,y waypoints or headings.")
    if max_omega_s > OMEGA_S_MAX:
        print("WARNING: trajectory steering angular velocity limit exceeded. Increase segment times or smooth waypoints.")


# =============================================================================
# Public entry point
# =============================================================================

# Public API: build waypoints, generate trajectory, and save outputs.
def generate_trajectory(
    waypoints: np.ndarray = WAYPOINTS,
    theta_start: float | None = THETA_START,
    theta_end: float | None = THETA_END,
    segment_times=None,
    output_dir: str | Path = DEFAULT_OUTPUT_DIR,
    generate_plots: bool = True,
) -> tuple[dict[str, np.ndarray], np.ndarray, np.ndarray, list[np.ndarray]]:
    if segment_times is None:
        segment_times = SEGMENT_TIMES

    full_waypoints, times = build_waypoints(
        waypoints=waypoints,
        theta_start=theta_start,
        theta_end=theta_end,
        segment_times=segment_times,
    )
    traj, control_points = generate_piecewise_bezier(full_waypoints, times)

    save_outputs(
        traj=traj,
        waypoints=full_waypoints,
        times=times,
        cps=control_points,
        output_dir=output_dir,
        generate_plots=generate_plots,
    )

    return traj, full_waypoints, times, control_points

# Run the generator with the default user parameters.
def main() -> None:
    generate_trajectory(
        waypoints=WAYPOINTS,
        theta_start=THETA_START,
        theta_end=THETA_END,
        segment_times=SEGMENT_TIMES,
        output_dir=DEFAULT_OUTPUT_DIR,
        generate_plots=True,
    )


if __name__ == "__main__":
    main()
