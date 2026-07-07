"""Reference trajectory loading and horizon management for Mk2 OAMPC."""

from __future__ import annotations

from pathlib import Path
from typing import Any

import numpy as np


REQUIRED_TRAJECTORY_FILES = (
    "qcar2_single_track_flatness_bezier5_Mk1.csv",
    "computed_waypoints_full.csv",
    "computed_segment_times.csv",
)
GEOMETRY_EPSILON = 1.0e-9


# Read a CSV file with header names into a structured NumPy array.
def load_named_csv(path: Path) -> np.ndarray:
    if not path.exists():
        raise FileNotFoundError(str(path))
    data = np.genfromtxt(path, delimiter=",", names=True)
    return np.atleast_1d(data)


# Return True when all mandatory generated trajectory files exist.
def generated_files_exist(generated_dir: Path) -> bool:
    return all((generated_dir / filename).exists() for filename in REQUIRED_TRAJECTORY_FILES)


# Load and serve state and input references for the OAMPC solver.
class ReferenceManager:
    # Load generated trajectory, waypoint, and segment-time files.
    def __init__(self, config: dict[str, Any]):
        self.config = config
        self.generated_dir = Path(config["_resolved_paths"]["generated_trajectory_dir"])
        if not generated_files_exist(self.generated_dir):
            raise FileNotFoundError("Generated trajectory not found.")

        self.trajectory_table = load_named_csv(self.generated_dir / "qcar2_single_track_flatness_bezier5_Mk1.csv")
        self.waypoint_table = load_named_csv(self.generated_dir / "computed_waypoints_full.csv")
        self.segment_time_table = load_named_csv(self.generated_dir / "computed_segment_times.csv")
        self.trajectory = self._build_trajectory_dict()
        self.waypoints = self._build_waypoint_array()
        self.segment_times = np.asarray(self.segment_time_table["T"], dtype=float)
        self.path_xy = np.column_stack((self.trajectory["X"], self.trajectory["Y"]))
        self.path_s = self._build_cumulative_arclength(self.path_xy)
        self.total_path_length = float(self.path_s[-1]) if len(self.path_s) else 0.0

    # Convert the structured trajectory table into plain NumPy arrays.
    def _build_trajectory_dict(self) -> dict[str, np.ndarray]:
        table = self.trajectory_table
        trajectory = {name: np.asarray(table[name], dtype=float) for name in table.dtype.names}
        trajectory["psi"] = np.unwrap(trajectory["psi"])
        return trajectory

    # Convert waypoint fields into an array with fixed column order.
    def _build_waypoint_array(self) -> np.ndarray:
        required_columns = ["X", "Y", "psi", "vx", "delta", "ax"]
        return np.column_stack([np.asarray(self.waypoint_table[column], dtype=float) for column in required_columns])

    # Build cumulative path arc length from Cartesian trajectory samples.
    def _build_cumulative_arclength(self, xy_points: np.ndarray) -> np.ndarray:
        points = np.asarray(xy_points, dtype=float).reshape((-1, 2))
        if len(points) == 0:
            return np.zeros(0, dtype=float)
        if len(points) == 1:
            return np.zeros(1, dtype=float)
        segment_lengths = np.linalg.norm(np.diff(points, axis=0), axis=1)
        return np.concatenate(([0.0], np.cumsum(segment_lengths)))

    # Return the number of trajectory samples.
    def sample_count(self) -> int:
        return int(len(self.trajectory["t"]))

    # Return the nominal sample time of the generated trajectory.
    def sample_time(self) -> float:
        time_array = self.trajectory["t"]
        if len(time_array) < 2:
            return float(self.config["trajectory"]["sample_time"])
        sample_time = float(np.median(np.diff(time_array)))
        if not np.isfinite(sample_time) or sample_time <= 0.0:
            return float(self.config["trajectory"]["sample_time"])
        return sample_time

    # Return a robust nominal cruise speed from the generated trajectory.
    def nominal_speed(self) -> float:
        velocity = np.asarray(self.trajectory.get("vx", np.array([0.0])), dtype=float)
        finite_positive = velocity[np.isfinite(velocity) & (velocity > 1.0e-6)]
        if finite_positive.size == 0:
            return float(self.config["oampc"]["constraints"].get("vx_max", 1.0))
        nominal = float(np.nanpercentile(finite_positive, 95.0))
        vx_max = float(self.config["oampc"]["constraints"].get("vx_max", nominal))
        return float(np.clip(nominal, 1.0e-6, vx_max))

    # Return one reference state [X, Y, psi, vx] by trajectory sample index.
    def state_at(self, index: int) -> np.ndarray:
        safe_index = int(np.clip(index, 0, self.sample_count() - 1))
        return np.array(
            [
                self.trajectory["X"][safe_index],
                self.trajectory["Y"][safe_index],
                self.trajectory["psi"][safe_index],
                self.trajectory["vx"][safe_index],
            ],
            dtype=float,
        )

    # Return one reference input [delta, ax] by trajectory sample index.
    def input_at(self, index: int) -> np.ndarray:
        safe_index = int(np.clip(index, 0, self.sample_count() - 1))
        return np.array([self.trajectory["delta"][safe_index], self.trajectory["ax"][safe_index]], dtype=float)

    # Project a Cartesian point onto the generated path and return (s, closest_sample_index).
    def project_position_to_path(self, position: np.ndarray) -> tuple[float, int]:
        point = np.asarray(position, dtype=float).reshape(2)
        if len(self.path_xy) == 0:
            return 0.0, 0
        if len(self.path_xy) == 1:
            return 0.0, 0

        best_distance = float("inf")
        best_s = 0.0
        best_index = 0
        for index in range(len(self.path_xy) - 1):
            start = self.path_xy[index]
            end = self.path_xy[index + 1]
            segment = end - start
            squared_length = float(np.dot(segment, segment))
            if squared_length <= GEOMETRY_EPSILON:
                ratio = 0.0
                projection = start
            else:
                ratio = float(np.clip(np.dot(point - start, segment) / squared_length, 0.0, 1.0))
                projection = start + ratio * segment
            distance = float(np.linalg.norm(point - projection))
            if distance < best_distance:
                best_distance = distance
                best_s = float(self.path_s[index] + ratio * np.linalg.norm(segment))
                best_index = int(index if ratio < 0.5 else index + 1)
        return float(np.clip(best_s, 0.0, self.total_path_length)), int(np.clip(best_index, 0, self.sample_count() - 1))

    # Interpolate reference states and inputs at path arc-length values.
    def _interpolate_by_s(self, s_values: np.ndarray, vx_reference: float | None = None) -> tuple[np.ndarray, np.ndarray, np.ndarray]:
        s_query = np.asarray(s_values, dtype=float).reshape(-1)
        if len(self.path_s) == 0:
            raise ValueError("Reference path is empty.")

        s_clamped = np.clip(s_query, 0.0, self.total_path_length)
        xref = np.zeros((4, len(s_clamped)), dtype=float)
        xref[0, :] = np.interp(s_clamped, self.path_s, self.trajectory["X"])
        xref[1, :] = np.interp(s_clamped, self.path_s, self.trajectory["Y"])
        xref[2, :] = np.interp(s_clamped, self.path_s, self.trajectory["psi"])

        nominal_vx = np.interp(s_clamped, self.path_s, self.trajectory["vx"])
        if vx_reference is None:
            xref[3, :] = nominal_vx
        else:
            safe_vx = max(0.0, float(vx_reference))
            xref[3, :] = np.minimum(np.maximum(nominal_vx, 0.0), safe_vx)
            positive_nominal = nominal_vx > 1.0e-6
            xref[3, positive_nominal] = safe_vx
            at_goal = s_clamped >= self.total_path_length - 1.0e-6
            xref[3, at_goal] = float(self.trajectory["vx"][-1])

        uref = np.zeros((2, max(0, len(s_clamped) - 1)), dtype=float)
        if uref.shape[1] > 0:
            uref[0, :] = np.interp(s_clamped[:-1], self.path_s, self.trajectory["delta"])
            if vx_reference is None:
                uref[1, :] = np.interp(s_clamped[:-1], self.path_s, self.trajectory["ax"])
            else:
                dt = float(self.config["oampc"].get("Ts", self.sample_time()))
                if dt > 0.0:
                    uref[1, :] = np.diff(xref[3, :]) / dt
                ax_min = float(self.config["oampc"]["constraints"].get("ax_min", -np.inf))
                ax_max = float(self.config["oampc"]["constraints"].get("ax_max", np.inf))
                uref[1, :] = np.clip(uref[1, :], ax_min, ax_max)

        nearest_indices = np.searchsorted(self.path_s, s_clamped, side="left")
        nearest_indices = np.clip(nearest_indices, 0, self.sample_count() - 1)
        return xref, uref, nearest_indices.astype(int)

    # Build state and input horizons from a reference index. Kept for backward compatibility.
    def build_horizon(self, start_index: int, horizon_steps: int, index_step: int = 1) -> tuple[np.ndarray, np.ndarray]:
        safe_step = max(1, int(index_step))
        xref = np.zeros((4, horizon_steps + 1), dtype=float)
        uref = np.zeros((2, horizon_steps), dtype=float)
        for offset in range(horizon_steps + 1):
            xref[:, offset] = self.state_at(start_index + offset * safe_step)
        for offset in range(horizon_steps):
            uref[:, offset] = self.input_at(start_index + offset * safe_step)
        return xref, uref

    # Build a horizon from the current path progress instead of elapsed time.
    def build_progress_horizon(
        self,
        current_state: np.ndarray,
        horizon_steps: int,
        sample_time: float,
        vx_reference: float,
        lookahead_steps: int | None = None,
    ) -> tuple[np.ndarray, np.ndarray, int]:
        steps = int(horizon_steps if lookahead_steps is None else lookahead_steps)
        steps = max(1, steps)
        s0, reference_index = self.project_position_to_path(np.asarray(current_state, dtype=float)[:2])
        ds = max(0.0, float(vx_reference)) * float(sample_time)
        s_values = s0 + ds * np.arange(steps + 1, dtype=float)
        xref, uref, _nearest_indices = self._interpolate_by_s(s_values, vx_reference=vx_reference)
        return xref, uref, reference_index

    # Return arrays used for QLabs reference drawing and plotting.
    def xy_points(self) -> np.ndarray:
        return np.column_stack((self.trajectory["X"], self.trajectory["Y"]))
