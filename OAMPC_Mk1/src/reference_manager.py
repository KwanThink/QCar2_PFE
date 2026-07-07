"""Reference trajectory loading and horizon management for Mk1 OAMPC."""

from __future__ import annotations

from pathlib import Path
from typing import Any

import numpy as np


REQUIRED_TRAJECTORY_FILES = (
    "qcar2_single_track_flatness_bezier5_Mk1.csv",
    "computed_waypoints_full.csv",
    "computed_segment_times.csv",
)


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

    # Return one reference state [X, Y, psi, vx].
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

    # Return one reference input [delta, ax].
    def input_at(self, index: int) -> np.ndarray:
        safe_index = int(np.clip(index, 0, self.sample_count() - 1))
        return np.array([self.trajectory["delta"][safe_index], self.trajectory["ax"][safe_index]], dtype=float)

    # Build state and input horizons for the solver from a reference index.
    def build_horizon(self, start_index: int, horizon_steps: int, index_step: int = 1) -> tuple[np.ndarray, np.ndarray]:
        safe_step = max(1, int(index_step))
        xref = np.zeros((4, horizon_steps + 1), dtype=float)
        uref = np.zeros((2, horizon_steps), dtype=float)
        for offset in range(horizon_steps + 1):
            xref[:, offset] = self.state_at(start_index + offset * safe_step)
        for offset in range(horizon_steps):
            uref[:, offset] = self.input_at(start_index + offset * safe_step)
        return xref, uref

    # Build a fixed-pose horizon for the GO_TO_START phase.
    def build_fixed_target_horizon(self, target_state: np.ndarray, horizon_steps: int) -> tuple[np.ndarray, np.ndarray]:
        xref = np.repeat(np.asarray(target_state, dtype=float).reshape(4, 1), horizon_steps + 1, axis=1)
        uref = np.zeros((2, horizon_steps), dtype=float)
        return xref, uref

    # Return arrays used for QLabs reference drawing and plotting.
    def xy_points(self) -> np.ndarray:
        return np.column_stack((self.trajectory["X"], self.trajectory["Y"]))
