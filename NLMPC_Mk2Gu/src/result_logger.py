"""Result logging for QCar2 NLMPC Mk2Gu obstacle-avoidance runs."""

from __future__ import annotations

import csv
import json
import shutil
from pathlib import Path
from typing import Any

import numpy as np


def create_numbered_run_folder(results_dir: Path, run_prefix: str) -> Path:
    """Create the next run_ObsAv_Mk2Gu_x folder."""
    results_dir.mkdir(parents=True, exist_ok=True)
    run_index = 1
    while (results_dir / f"{run_prefix}{run_index}").exists():
        run_index += 1
    run_folder = results_dir / f"{run_prefix}{run_index}"
    run_folder.mkdir(parents=True, exist_ok=False)
    return run_folder


def write_dict_csv(path: Path, rows: list[dict[str, Any]], fieldnames: list[str]) -> None:
    with path.open("w", newline="", encoding="utf-8") as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        writer.writeheader()
        for row in rows:
            writer.writerow({key: row.get(key, "") for key in fieldnames})


def finite_or_empty(value: Any) -> float | str:
    if value is None:
        return ""
    try:
        numeric_value = float(value)
    except (TypeError, ValueError):
        return ""
    return numeric_value if np.isfinite(numeric_value) else ""


def mean_and_max(values: np.ndarray) -> tuple[float, float]:
    if values.size == 0:
        return 0.0, 0.0
    return float(np.nanmean(values)), float(np.nanmax(values))


class ResultLogger:
    """Store control-loop samples and save CSV, JSON, and SVG outputs."""

    def __init__(self, config: dict[str, Any], obstacle_file_config: dict[str, Any]):
        self.config = config
        self.obstacle_file_config = obstacle_file_config
        self.results_dir = Path(config["_resolved_paths"]["results_dir"])
        self.run_prefix = "run_ObsAv_Mk2Gu_"
        self.rows: list[dict[str, Any]] = []
        self.obstacle_rows: list[dict[str, Any]] = []
        self.run_folder: Path | None = None

    def start(self) -> None:
        if self.run_folder is None:
            self.run_folder = create_numbered_run_folder(self.results_dir, self.run_prefix)

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
        slack_value: float,
        mip_gap: float | None,
        number_of_config_obstacles: int,
        number_of_obstacle_edges: int,
        obstacle_list: list[dict[str, Any]],
    ) -> None:
        position_error = float(np.hypot(state_error[0], state_error[1]))
        row = {
            "t": float(t),
            "ref_index": int(ref_index),
            "X": float(state[0]),
            "Y": float(state[1]),
            "psi": float(state[2]),
            "vx": float(state[3]),
            "vx_cmd": float(control[0]),
            "delta_cmd": float(control[1]),
            "ax_cmd": float(control[2]),
            "X_ref": float(reference_state[0]),
            "Y_ref": float(reference_state[1]),
            "psi_ref": float(reference_state[2]),
            "vx_ref": float(reference_state[3]),
            "delta_ref": float(reference_input[0]),
            "ax_ref": float(reference_input[1]),
            "X_e": float(state_error[0]),
            "Y_e": float(state_error[1]),
            "Psi_e": float(state_error[2]),
            "vx_e": float(state_error[3]),
            "position_error": position_error,
            "yaw_error": float(state_error[2]),
            "speed_error": float(state_error[3]),
            "delta_e": float(control[1] - reference_input[0]),
            "ax_e": float(control[2] - reference_input[1]),
            "solve_time": float(solve_time),
            "solver_success": int(bool(solver_success)),
            "solver_status": str(solver_status),
            "slack_value": float(slack_value),
            "mip_gap": finite_or_empty(mip_gap),
            "number_of_config_obstacles": int(number_of_config_obstacles),
            "number_of_obstacle_edges": int(number_of_obstacle_edges),
        }
        self.rows.append(row)

        from src.obstacle import obstacle_edges_to_rows

        self.obstacle_rows.extend(obstacle_edges_to_rows(obstacle_list, float(t), int(ref_index)))

    def save(self) -> Path:
        self.start()
        assert self.run_folder is not None
        config_path = Path(self.config["_config_path"])
        if config_path.exists():
            shutil.copy2(config_path, self.run_folder / "config_used.yaml")
        obstacle_config_path = Path(self.obstacle_file_config["_config_path"])
        if obstacle_config_path.exists():
            shutil.copy2(obstacle_config_path, self.run_folder / "obstacle_config_used.yaml")
        self._save_csv_files()
        self._save_metrics()
        self._save_plots()
        return self.run_folder

    def _save_csv_files(self) -> None:
        assert self.run_folder is not None
        write_dict_csv(self.run_folder / "states.csv", self.rows, ["t", "X", "Y", "psi", "vx"])
        write_dict_csv(self.run_folder / "controls.csv", self.rows, ["t", "vx_cmd", "delta_cmd", "ax_cmd"])
        write_dict_csv(self.run_folder / "reference_used.csv", self.rows, ["t", "ref_index", "X_ref", "Y_ref", "psi_ref", "vx_ref"])
        write_dict_csv(self.run_folder / "reference_controls.csv", self.rows, ["t", "delta_ref", "ax_ref"])
        write_dict_csv(self.run_folder / "state_error.csv", self.rows, ["t", "X_e", "Y_e", "Psi_e", "vx_e"])
        write_dict_csv(self.run_folder / "input_error.csv", self.rows, ["t", "delta_e", "ax_e"])
        write_dict_csv(self.run_folder / "tracking_error.csv", self.rows, ["t", "position_error", "yaw_error", "speed_error"])
        write_dict_csv(
            self.run_folder / "solve_times.csv",
            self.rows,
            [
                "t",
                "solve_time",
                "solver_success",
                "solver_status",
                "slack_value",
                "mip_gap",
                "number_of_config_obstacles",
                "number_of_obstacle_edges",
            ],
        )
        write_dict_csv(
            self.run_folder / "obstacle_hulls.csv",
            self.obstacle_rows,
            ["time", "reference_index", "obstacle_id", "edge_id", "x1", "y1", "x2", "y2", "g1", "g2", "f"],
        )

    def _save_metrics(self) -> None:
        assert self.run_folder is not None
        position_error = np.asarray([row["position_error"] for row in self.rows], dtype=float)
        yaw_error = np.asarray([abs(row["yaw_error"]) for row in self.rows], dtype=float)
        speed_error = np.asarray([abs(row["speed_error"]) for row in self.rows], dtype=float)
        solve_time = np.asarray([row["solve_time"] for row in self.rows], dtype=float)
        success = np.asarray([row["solver_success"] for row in self.rows], dtype=float)
        mean_position, max_position = mean_and_max(position_error)
        mean_yaw, max_yaw = mean_and_max(yaw_error)
        mean_speed, max_speed = mean_and_max(speed_error)
        mean_solve, max_solve = mean_and_max(solve_time)
        metrics = {
            "number_of_samples": len(self.rows),
            "mean_position_error": mean_position,
            "max_position_error": max_position,
            "mean_yaw_error_abs": mean_yaw,
            "max_yaw_error_abs": max_yaw,
            "mean_speed_error_abs": mean_speed,
            "max_speed_error_abs": max_speed,
            "mean_solve_time": mean_solve,
            "max_solve_time": max_solve,
            "solver_success_rate": float(np.mean(success)) if success.size else 0.0,
        }
        with (self.run_folder / "metrics.json").open("w", encoding="utf-8") as file:
            json.dump(metrics, file, indent=2)

    def _save_plots(self) -> None:
        if not self.rows:
            return
        try:
            import matplotlib.pyplot as plt
            from matplotlib.patches import Polygon
        except ModuleNotFoundError:
            return
        assert self.run_folder is not None
        data = {key: np.asarray([row[key] for row in self.rows], dtype=float) for key in self.rows[0] if key != "solver_status"}

        plt.figure(figsize=(8.0, 5.0))
        plt.plot(data["X_ref"], data["Y_ref"], linestyle="-.", label="Reference trajectory")
        plt.plot(data["X"], data["Y"], label="Measured trajectory")
        from src.obstacle import build_obstacle_list
        for index, obstacle in enumerate(build_obstacle_list(self.obstacle_file_config)):
            plt.gca().add_patch(
                Polygon(
                    np.asarray(obstacle["vertices"], dtype=float),
                    closed=True,
                    facecolor="yellow",
                    edgecolor="black",
                    hatch="///",
                    alpha=0.75,
                    label="Obstacle" if index == 0 else None,
                )
            )
        plt.axis("equal")
        plt.xlabel("X [m]")
        plt.ylabel("Y [m]")
        plt.grid(True)
        plt.legend()
        plt.tight_layout()
        plt.savefig(self.run_folder / "trajectory_tracking.svg", format="svg")
        plt.close()

        self._plot_series(plt, data, [("X", "X_ref"), ("Y", "Y_ref"), ("psi", "psi_ref"), ("vx", "vx_ref")], "states.svg")
        self._plot_series(plt, data, [("X_e", None), ("Y_e", None), ("Psi_e", None), ("vx_e", None)], "state_error.svg")
        self._plot_series(plt, data, [("vx_cmd", None), ("delta_cmd", None), ("ax_cmd", None)], "controls.svg")
        self._plot_series(plt, data, [("delta_cmd", "delta_ref"), ("ax_cmd", "ax_ref")], "input.svg")
        self._plot_series(plt, data, [("delta_e", None), ("ax_e", None)], "input_error.svg")
        self._plot_series(plt, data, [("solve_time", None)], "solve_time.svg")

    def _plot_series(
        self,
        plt: Any,
        data: dict[str, np.ndarray],
        signals: list[tuple[str, str | None]],
        filename: str,
    ) -> None:
        assert self.run_folder is not None
        fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.6 * len(signals)), squeeze=False)
        for axis, (actual_key, reference_key) in zip(axes[:, 0], signals):
            axis.plot(data["t"], data[actual_key], label=actual_key)
            if reference_key is not None:
                axis.plot(data["t"], data[reference_key], linestyle="-.", label=reference_key)
            axis.grid(True)
            axis.legend()
            axis.set_xlabel("t (s)")
        fig.tight_layout()
        fig.savefig(self.run_folder / filename, format="svg")
        plt.close(fig)
