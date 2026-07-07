"""Result logging for QCar2 OAMPC Mk2 runs."""

from __future__ import annotations

import csv
import json
import shutil
from pathlib import Path
from typing import Any

import numpy as np


# Create the next indexed run folder inside the result directory.
def create_indexed_run_folder(results_dir: Path, run_prefix: str) -> Path:
    results_dir.mkdir(parents=True, exist_ok=True)
    run_index = 1
    while True:
        run_folder = results_dir / f"{run_prefix}{run_index}"
        if not run_folder.exists():
            run_folder.mkdir(parents=True, exist_ok=False)
            return run_folder
        run_index += 1


# Write a list of dictionaries into a CSV file.
def write_dict_csv(path: Path, rows: list[dict[str, Any]], fieldnames: list[str]) -> None:
    with path.open("w", newline="", encoding="utf-8") as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        writer.writeheader()
        for row in rows:
            writer.writerow({key: row.get(key, "") for key in fieldnames})


# Compute mean and maximum values with empty-array protection.
def mean_and_max(values: np.ndarray) -> tuple[float, float]:
    if values.size == 0:
        return 0.0, 0.0
    return float(np.nanmean(values)), float(np.nanmax(values))


# Convert optional solver diagnostics into CSV-safe numbers.
def finite_or_empty(value: Any) -> float | str:
    if value is None:
        return ""
    try:
        numeric_value = float(value)
    except (TypeError, ValueError):
        return ""
    if not np.isfinite(numeric_value):
        return ""
    return numeric_value


# Store tracking data and save CSV, JSON, and plot outputs.
class ResultLogger:
    # Initialize the logger with code-level defaults for OAMPC Mk2 runs.
    def __init__(self, config: dict[str, Any]):
        self.config = config
        self.enabled = True
        self.save_plots = True
        self.results_dir = Path(config["_resolved_paths"]["results_dir"])
        self.run_prefix = "run_ObsAv_Mk2_"
        self.rows: list[dict[str, Any]] = []
        self.obstacle_rows: list[dict[str, Any]] = []
        self.run_folder: Path | None = None

    # Create the run folder on first use.
    def start(self) -> None:
        if not self.enabled:
            return
        if self.run_folder is None:
            self.run_folder = create_indexed_run_folder(self.results_dir, self.run_prefix)

    # Copy the active config file into the run folder.
    def copy_used_config(self) -> None:
        if self.run_folder is None:
            return
        config_path = Path(self.config["_config_path"])
        if config_path.exists():
            shutil.copy2(config_path, self.run_folder / "config_used.yaml")

    # Append obstacle edge rows for the current control-loop sample.
    def record_obstacle_hulls(
        self,
        t: float,
        ref_index: int,
        obstacle_list: list[dict[str, Any]] | None,
        active_obstacle_ids: list[int] | None,
    ) -> None:
        if not self.enabled or not obstacle_list:
            return
        from src.obstacle import obstacle_edges_to_rows

        active_set = set(active_obstacle_ids or [])
        self.obstacle_rows.extend(obstacle_edges_to_rows(obstacle_list, active_set, float(t), int(ref_index)))

    # Add one control-loop sample to the in-memory log.
    def record(
        self,
        t: float,
        ref_index: int,
        state: np.ndarray,
        control: np.ndarray,
        reference_state: np.ndarray,
        reference_input: np.ndarray,
        state_error: np.ndarray,
        solver_success: bool,
        solver_status: str,
        solve_time: float,
        virtual_input: np.ndarray | None = None,
        slack_value: float = 0.0,
        mip_gap: float | None = None,
        number_of_config_obstacles: int = 0,
        number_of_active_obstacles: int = 0,
        number_of_active_edges: int = 0,
        obstacle_list: list[dict[str, Any]] | None = None,
        active_obstacle_ids: list[int] | None = None,
    ) -> None:
        if not self.enabled:
            return

        if virtual_input is None:
            virtual_input = np.zeros(2, dtype=float)

        position_error = float(np.hypot(state_error[0], state_error[1]))
        yaw_error = float(state_error[2])
        speed_error = float(state_error[3])
        delta_error = float(control[1] - reference_input[0])
        ax_error = float(control[2] - reference_input[1])

        row = {
            "t": float(t),
            "time": float(t),
            "ref_index": int(ref_index),
            "reference_index": int(ref_index),
            "X": float(state[0]),
            "Y": float(state[1]),
            "psi": float(state[2]),
            "vx": float(state[3]),
            "vx_cmd": float(control[0]),
            "delta_cmd": float(control[1]),
            "ax_cmd": float(control[2]),
            "delta_command": float(control[1]),
            "acceleration_command": float(control[2]),
            "v1": float(virtual_input[0]),
            "v2": float(virtual_input[1]),
            "X_ref": float(reference_state[0]),
            "Y_ref": float(reference_state[1]),
            "psi_ref": float(reference_state[2]),
            "vx_ref": float(reference_state[3]),
            "delta_ref": float(reference_input[0]),
            "ax_ref": float(reference_input[1]),
            "X_e": float(state_error[0]),
            "Y_e": float(state_error[1]),
            "Psi_e": yaw_error,
            "vx_e": speed_error,
            "position_error": position_error,
            "yaw_error": yaw_error,
            "speed_error": speed_error,
            "delta_e": delta_error,
            "ax_e": ax_error,
            "solve_time": float(solve_time),
            "solver_success": int(bool(solver_success)),
            "solver_status": str(solver_status),
            "slack_value": float(slack_value),
            "mip_gap": finite_or_empty(mip_gap),
            "number_of_config_obstacles": int(number_of_config_obstacles),
            "number_of_active_obstacles": int(number_of_active_obstacles),
            "number_of_active_edges": int(number_of_active_edges),
        }
        self.rows.append(row)
        self.record_obstacle_hulls(t, ref_index, obstacle_list, active_obstacle_ids)

    # Save every required result file into the run folder.
    def save(self) -> Path | None:
        if not self.enabled:
            return None
        self.start()
        if self.run_folder is None:
            return None

        self.copy_used_config()
        self._save_csv_files()
        self._save_metrics()
        if self.save_plots:
            self._save_plots()
        return self.run_folder

    # Save the required CSV files with stable column names.
    def _save_csv_files(self) -> None:
        assert self.run_folder is not None
        write_dict_csv(self.run_folder / "states.csv", self.rows, ["t", "X", "Y", "psi", "vx"])
        write_dict_csv(self.run_folder / "controls.csv", self.rows, ["t", "vx_cmd", "delta_cmd", "ax_cmd"])
        write_dict_csv(self.run_folder / "reference_used.csv", self.rows, ["t", "ref_index", "X_ref", "Y_ref", "psi_ref", "vx_ref"])
        write_dict_csv(self.run_folder / "reference_controls.csv", self.rows, ["t", "delta_ref", "ax_ref"])
        write_dict_csv(self.run_folder / "state_error.csv", self.rows, ["t", "X_e", "Y_e", "Psi_e", "vx_e"])
        write_dict_csv(self.run_folder / "input_error.csv", self.rows, ["t", "delta_e", "ax_e"])
        write_dict_csv(self.run_folder / "control_error.csv", self.rows, ["t", "delta_e", "ax_e"])
        write_dict_csv(self.run_folder / "tracking_error.csv", self.rows, ["t", "position_error", "yaw_error", "speed_error"])
        write_dict_csv(self.run_folder / "solve_times.csv", self.rows, ["t", "solve_time", "solver_success", "solver_status"])
        write_dict_csv(self.run_folder / "trajectory_reference.csv", self.rows, ["time", "reference_index", "X_ref", "Y_ref", "psi_ref", "vx_ref", "delta_ref", "ax_ref"])
        write_dict_csv(
            self.run_folder / "tracking_log.csv",
            self.rows,
            [
                "time",
                "reference_index",
                "X",
                "Y",
                "psi",
                "vx",
                "X_ref",
                "Y_ref",
                "psi_ref",
                "vx_ref",
                "position_error",
                "yaw_error",
                "speed_error",
                "vx_cmd",
                "delta_cmd",
                "ax_cmd",
            ],
        )
        write_dict_csv(
            self.run_folder / "virtual_input.csv",
            self.rows,
            ["time", "reference_index", "v1", "v2", "delta_command", "acceleration_command", "solver_status", "solver_success", "solve_time"],
        )
        write_dict_csv(
            self.run_folder / "obstacle_hulls.csv",
            self.obstacle_rows,
            ["time", "reference_index", "obstacle_id", "edge_id", "x1", "y1", "x2", "y2", "g1", "g2", "f", "active"],
        )

    # Save compact tracking and solver summary metrics.
    def _save_metrics(self) -> None:
        assert self.run_folder is not None
        position_error = np.asarray([row["position_error"] for row in self.rows], dtype=float)
        yaw_error_abs = np.asarray([abs(row["yaw_error"]) for row in self.rows], dtype=float)
        speed_error_abs = np.asarray([abs(row["speed_error"]) for row in self.rows], dtype=float)
        solve_times = np.asarray([row["solve_time"] for row in self.rows], dtype=float)
        solver_success = np.asarray([row["solver_success"] for row in self.rows], dtype=float)

        mean_position_error, max_position_error = mean_and_max(position_error)
        mean_yaw_error_abs, max_yaw_error_abs = mean_and_max(yaw_error_abs)
        mean_speed_error_abs, max_speed_error_abs = mean_and_max(speed_error_abs)
        mean_solve_time, max_solve_time = mean_and_max(solve_times)
        solver_success_rate = float(np.mean(solver_success)) if solver_success.size else 0.0

        metrics = {
            "number_of_samples": int(len(self.rows)),
            "mean_position_error": mean_position_error,
            "max_position_error": max_position_error,
            "mean_yaw_error_abs": mean_yaw_error_abs,
            "max_yaw_error_abs": max_yaw_error_abs,
            "mean_speed_error_abs": mean_speed_error_abs,
            "max_speed_error_abs": max_speed_error_abs,
            "mean_solve_time": mean_solve_time,
            "max_solve_time": max_solve_time,
            "solver_success_rate": solver_success_rate,
        }
        with (self.run_folder / "metrics.json").open("w", encoding="utf-8") as file:
            json.dump(metrics, file, indent=2)

    # Save all required PNG result plots.
    def _save_plots(self) -> None:
        if not self.rows:
            return
        try:
            import matplotlib

            matplotlib.use("Agg")
            import matplotlib.pyplot as plt
        except ModuleNotFoundError:
            return

        data = self._rows_to_arrays()
        self._plot_xy(plt, data, "trajectory_tracking.png")
        self._plot_reference_series(
            plt,
            data,
            [
                ("X", "X_ref", r"$X$", r"$X_{ref}$", r"$X$ (m)"),
                ("Y", "Y_ref", r"$Y$", r"$Y_{ref}$", r"$Y$ (m)"),
                ("psi", "psi_ref", r"$\Psi$", r"$\Psi_{ref}$", r"$\Psi$ (rad)"),
                ("vx", "vx_ref", r"$v_x$", r"$v_{x,ref}$", r"$v_x$ (m/s)"),
            ],
            "states.png",
            "QCar2 States",
        )
        self._plot_series(
            plt,
            data,
            [
                ("X_e", r"$X_e$ (m)"),
                ("Y_e", r"$Y_e$ (m)"),
                ("Psi_e", r"$\Psi_e$ (rad)"),
                ("vx_e", r"$v_{x,e}$ (m/s)"),
            ],
            "state_error.png",
            "QCar2 States Error",
        )
        control_signals = [
            ("vx_cmd", r"$v_{x,cmd}$ (m/s)"),
            ("delta_cmd", r"$\delta_{cmd}$ (rad)"),
            ("ax_cmd", r"$a_{x,cmd}$ $\left(\mathrm{m/s^2}\right)$"),
        ]
        self._plot_series(plt, data, control_signals, "controls.png", "QCar2 Controls")
        self._plot_series(plt, data, control_signals, "control_inputs.png", "QCar2 Controls")
        self._plot_reference_series(
            plt,
            data,
            [
                ("delta_cmd", "delta_ref", r"$\delta_{cmd}$", r"$\delta_{ref}$", r"$\delta$ (rad)"),
                ("ax_cmd", "ax_ref", r"$a_{x,cmd}$", r"$a_{x,ref}$", r"$a_x$ $\left(\mathrm{m/s^2}\right)$"),
            ],
            "input.png",
            "QCar2 Inputs",
        )
        self._plot_series(
            plt,
            data,
            [
                ("delta_e", r"$\delta_e$ (rad)"),
                ("ax_e", r"$a_{x,e}$ $\left(\mathrm{m/s^2}\right)$"),
            ],
            "input_error.png",
            "QCar2 Input Error",
        )
        self._plot_solve_time(plt, data, "solve_time.png")
        self._plot_virtual_input(plt, data, "virtual_input.png")

    # Convert in-memory rows into numeric arrays for plotting.
    def _rows_to_arrays(self) -> dict[str, np.ndarray]:
        keys = [key for key in self.rows[0].keys() if key != "solver_status"]
        arrays: dict[str, np.ndarray] = {}
        for key in keys:
            numeric_values: list[float] = []
            for row in self.rows:
                value = row[key]
                if value == "":
                    numeric_values.append(float("nan"))
                else:
                    numeric_values.append(float(value))
            arrays[key] = np.asarray(numeric_values, dtype=float)
        return arrays

    # Save the XY trajectory tracking plot.
    def _plot_xy(self, plt: Any, data: dict[str, np.ndarray], filename: str) -> None:
        assert self.run_folder is not None
        waypoints = np.asarray(self.config["trajectory"]["waypoints"], dtype=float)

        plt.figure(figsize=(7.0, 5.0))
        plt.plot(data["X_ref"], data["Y_ref"], linestyle="-.", label="Reference trajectory")
        plt.plot(data["X"], data["Y"], label="Measured trajectory")
        self._draw_obstacle_patches(plt)
        if waypoints.ndim == 2 and waypoints.shape[1] == 2:
            plt.plot(waypoints[:, 0], waypoints[:, 1], "o", label="Waypoints")
            plt.plot(waypoints[0, 0], waypoints[0, 1], "s", label="Start point")
            plt.plot(waypoints[-1, 0], waypoints[-1, 1], "*", label="Goal point")
        plt.axis("equal")
        plt.xlabel("X [m]")
        plt.ylabel("Y [m]")
        plt.grid(True)
        plt.legend()
        plt.tight_layout()
        plt.savefig(self.run_folder / filename, dpi=180)
        plt.close()

    # Draw configured obstacle polygons with a black road-block hatch.
    def _draw_obstacle_patches(self, plt: Any) -> None:
        try:
            from matplotlib.patches import Polygon
            from src.obstacle import build_obstacle_list
        except ModuleNotFoundError:
            return
        axis = plt.gca()
        obstacles = build_obstacle_list(self.config)
        for index, obstacle in enumerate(obstacles):
            patch = Polygon(
                np.asarray(obstacle["vertices"], dtype=float),
                closed=True,
                facecolor="yellow",
                edgecolor="black",
                linewidth=1.5,
                hatch="///",
                alpha=0.75,
                label="Obstacle" if index == 0 else None,
            )
            axis.add_patch(patch)

    # Return lower and upper plot limits for constrained variables.
    def _constraint_limits(self, key: str) -> tuple[float, float] | None:
        constraints = self.config["oampc"]["constraints"]
        limit_map = {
            "vx": ("vx_min", "vx_max"),
            "vx_ref": ("vx_min", "vx_max"),
            "vx_cmd": ("vx_min", "vx_max"),
            "delta_cmd": ("delta_min", "delta_max"),
            "delta_ref": ("delta_min", "delta_max"),
            "ax_cmd": ("ax_min", "ax_max"),
            "ax_ref": ("ax_min", "ax_max"),
        }
        if key not in limit_map:
            return None
        lower_key, upper_key = limit_map[key]
        if lower_key not in constraints or upper_key not in constraints:
            return None
        return float(constraints[lower_key]), float(constraints[upper_key])

    # Save one vertical multi-subplot time-series figure with one signal per subplot.
    def _plot_series(self, plt: Any, data: dict[str, np.ndarray], signals: list[tuple[str, str]], filename: str, title: str) -> None:
        assert self.run_folder is not None
        fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)
        time_array = data["t"]
        for axis, (key, label) in zip(axes[:, 0], signals):
            axis.plot(time_array, data[key], label=label.split(" (")[0])
            limits = self._constraint_limits(key)
            if limits is not None:
                axis.axhline(limits[0], color="red", linestyle="--", linewidth=1.0)
                axis.axhline(limits[1], color="red", linestyle="--", linewidth=1.0)
            axis.set_title(label)
            axis.set_xlabel("t (s)")
            axis.grid(True)
            axis.legend()
        fig.suptitle(title)
        fig.tight_layout()
        fig.savefig(self.run_folder / filename, dpi=180)
        plt.close(fig)

    # Save one vertical multi-subplot time-series figure with actual and reference signals.
    def _plot_reference_series(
        self,
        plt: Any,
        data: dict[str, np.ndarray],
        signals: list[tuple[str, str, str, str, str]],
        filename: str,
        title: str,
    ) -> None:
        assert self.run_folder is not None
        fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)
        time_array = data["t"]
        for axis, (actual_key, reference_key, actual_label, reference_label, axis_title) in zip(axes[:, 0], signals):
            axis.plot(time_array, data[actual_key], label=actual_label)
            axis.plot(time_array, data[reference_key], linestyle="-.", label=reference_label)
            limits = self._constraint_limits(actual_key)
            if limits is not None:
                axis.axhline(limits[0], color="red", linestyle="--", linewidth=1.0)
                axis.axhline(limits[1], color="red", linestyle="--", linewidth=1.0)
            axis.set_title(axis_title)
            axis.set_xlabel("t (s)")
            axis.grid(True)
            axis.legend()
        fig.suptitle(title)
        fig.tight_layout()
        fig.savefig(self.run_folder / filename, dpi=180)
        plt.close(fig)

    # Save the solver computation time plot.
    def _plot_solve_time(self, plt: Any, data: dict[str, np.ndarray], filename: str) -> None:
        assert self.run_folder is not None
        time_array = data["t"]
        solve_time = data["solve_time"]

        fig, axis = plt.subplots(1, 1, figsize=(7.0, 3.2))
        axis.plot(time_array, solve_time, label=r"$t_{solve}$")
        axis.set_title("Solver Time")
        axis.set_xlabel("t (s)")
        axis.set_ylabel("Solve time (s)")
        axis.grid(True)
        axis.legend()
        fig.tight_layout()
        fig.savefig(self.run_folder / filename, dpi=180)
        plt.close(fig)

    # Save the optimal virtual input plot.
    def _plot_virtual_input(self, plt: Any, data: dict[str, np.ndarray], filename: str) -> None:
        assert self.run_folder is not None
        time_array = data["t"]

        fig, axes = plt.subplots(2, 1, figsize=(7.0, 5.6), squeeze=False)
        axes[0, 0].plot(time_array, data["v1"], label=r"$v_1$")
        axes[0, 0].set_ylabel(r"$v_1$ [$m/s^2$]")
        axes[0, 0].grid(True)
        axes[0, 0].legend()

        axes[1, 0].plot(time_array, data["v2"], label=r"$v_2$")
        axes[1, 0].set_ylabel(r"$v_2$ [$m/s^2$]")
        axes[1, 0].set_xlabel("Time [s]")
        axes[1, 0].grid(True)
        axes[1, 0].legend()

        fig.suptitle("OAMPC Virtual Inputs")
        fig.tight_layout()
        fig.savefig(self.run_folder / filename, dpi=180)
        plt.close(fig)
