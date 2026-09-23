from __future__ import annotations

from pathlib import Path
import argparse
import csv
import warnings

import numpy as np
import pandas as pd

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt


# =============================================================================
# INPUT PATHS
# Put any two result folders inside Mk1_Comparison and enter their folder names below.
# Absolute paths are also accepted. Command-line paths override these values.
# =============================================================================
RUN_A_PATH = r"run_Mk2_Circle_1_Completed"
RUN_B_PATH = r"run_FLMPC_Mk2_1_Completed"

# Choose which run provides the single reference curve shown in the figures.
REFERENCE_SOURCE = "A"  # "A" or "B"

# Output settings.
SAVE_FORMAT = "svg"
OUTPUT_FOLDER_NAME = "exp_results"


# =============================================================================
# PATHS
# =============================================================================
SCRIPT_DIR = Path(__file__).resolve().parent


class RunData:
    """Container for one QLabs run after automatic CSV discovery and normalization."""

    # Load and normalize the CSV logs needed by the comparison plots.
    def __init__(self, run_dir: Path, controller_name: str) -> None:
        self.run_dir = run_dir
        self.controller_name = controller_name

        self.states = self._find_csv(
            "states",
            required_columns={"t", "X", "Y", "psi", "vx"},
        )
        self.controls = self._find_controls_csv()
        self.reference = self._find_csv(
            "reference states",
            required_columns={"t", "X_ref", "Y_ref", "psi_ref", "vx_ref"},
        )
        self.reference_controls = self._find_csv(
            "reference controls",
            required_columns={"t", "delta_ref", "ax_ref"},
        )
        self.solve_times = self._find_csv(
            "solve times",
            required_columns={"t", "solve_time"},
        )

        self._normalize_control_columns()
        self._normalize_all_time_columns()
        self.state_error = self._calculate_state_error()
        self.input_error = self._calculate_input_error()
        self.tracking_error = self._calculate_tracking_error()

    # Return all CSV files in this run folder.
    def _csv_files(self) -> list[Path]:
        return sorted(path for path in self.run_dir.glob("*.csv") if path.is_file())

    # Read only a CSV header so files can be identified independently of filenames.
    def _csv_columns(self, path: Path) -> set[str]:
        try:
            return set(pd.read_csv(path, nrows=0).columns)
        except Exception as exc:
            raise ValueError(f"Could not read CSV header: {path}\n{exc}") from exc

    # Find a CSV by the columns it contains instead of by an exact filename.
    def _find_csv(self, description: str, required_columns: set[str]) -> pd.DataFrame:
        matches: list[Path] = []

        for path in self._csv_files():
            columns = self._csv_columns(path)
            if required_columns.issubset(columns):
                matches.append(path)

        if not matches:
            available = ", ".join(path.name for path in self._csv_files()) or "none"
            required = ", ".join(sorted(required_columns))
            raise FileNotFoundError(
                f"Could not identify the {description} CSV in:\n  {self.run_dir}\n"
                f"Required columns: {required}\nAvailable CSV files: {available}"
            )

        selected = self._select_best_match(matches, description)
        print(f"  {self.controller_name:5s} {description:18s}: {selected.name}")
        return pd.read_csv(selected)

    # Prefer the most semantically relevant filename when more than one CSV matches.
    def _select_best_match(self, matches: list[Path], description: str) -> Path:
        keywords = {
            "states": ("states",),
            "reference states": ("reference_used", "reference"),
            "reference controls": ("reference_controls",),
            "solve times": ("solve_times", "solve_time"),
        }.get(description, ())

        def score(path: Path) -> tuple[int, int, str]:
            name = path.stem.lower()
            keyword_score = sum(1 for keyword in keywords if keyword in name)
            return (-keyword_score, len(path.name), path.name.lower())

        return sorted(matches, key=score)[0]

    # Find the control CSV while accepting both old and current QCar2 column names.
    def _find_controls_csv(self) -> pd.DataFrame:
        candidates: list[Path] = []

        for path in self._csv_files():
            columns = self._csv_columns(path)
            has_time = "t" in columns
            has_speed = "vx_cmd" in columns or "desired_speed" in columns
            has_delta = "delta_cmd" in columns or "delta" in columns
            has_ax = "ax_cmd" in columns or "ax" in columns

            if has_time and has_speed and has_delta and has_ax:
                candidates.append(path)

        if not candidates:
            available = ", ".join(path.name for path in self._csv_files()) or "none"
            raise FileNotFoundError(
                f"Could not identify the controls CSV in:\n  {self.run_dir}\n"
                "Expected t plus speed, steering, and acceleration command columns.\n"
                f"Available CSV files: {available}"
            )

        candidates.sort(
            key=lambda path: (
                0 if "controls" in path.stem.lower() and "reference" not in path.stem.lower() else 1,
                len(path.name),
                path.name.lower(),
            )
        )
        selected = candidates[0]
        print(f"  {self.controller_name:5s} {'controls':18s}: {selected.name}")
        return pd.read_csv(selected)

    # Map current and legacy control column names to one internal convention.
    def _normalize_control_columns(self) -> None:
        aliases = {
            "desired_speed": "vx_cmd",
            "delta": "delta_cmd",
            "ax": "ax_cmd",
        }

        rename_map = {
            old_name: new_name
            for old_name, new_name in aliases.items()
            if old_name in self.controls.columns and new_name not in self.controls.columns
        }
        self.controls = self.controls.rename(columns=rename_map)

        required = {"t", "vx_cmd", "delta_cmd", "ax_cmd"}
        missing = required.difference(self.controls.columns)
        if missing:
            raise KeyError(
                f"Missing normalized control columns in {self.run_dir}: "
                + ", ".join(sorted(missing))
            )

    # Shift every raw log so its first recorded sample is t = 0 s.
    def _normalize_all_time_columns(self) -> None:
        tables = (
            self.states,
            self.controls,
            self.reference,
            self.reference_controls,
            self.solve_times,
        )

        for table in tables:
            if "t" not in table.columns:
                raise KeyError(f"Expected a 't' column in a CSV from {self.run_dir}.")
            table["t"] = pd.to_numeric(table["t"], errors="raise")
            table["t"] = table["t"] - float(table["t"].iloc[0])
            table.sort_values("t", inplace=True)
            table.reset_index(drop=True, inplace=True)

    # Calculate signed state errors directly from state and reference logs.
    def _calculate_state_error(self) -> pd.DataFrame:
        time_grid = self.states["t"].to_numpy(dtype=float)
        x_ref = interpolate_column(self.reference, "X_ref", time_grid)
        y_ref = interpolate_column(self.reference, "Y_ref", time_grid)
        psi_ref = interpolate_angle_column(self.reference, "psi_ref", time_grid)
        vx_ref = interpolate_column(self.reference, "vx_ref", time_grid)

        x_error = self.states["X"].to_numpy(dtype=float) - x_ref
        y_error = self.states["Y"].to_numpy(dtype=float) - y_ref
        psi_error = wrapped_angle_difference(
            self.states["psi"].to_numpy(dtype=float),
            psi_ref,
        )
        vx_error = self.states["vx"].to_numpy(dtype=float) - vx_ref

        return pd.DataFrame(
            {
                "t": time_grid,
                "X_e": x_error,
                "Y_e": y_error,
                "Psi_e": psi_error,
                "vx_e": vx_error,
            }
        )

    # Calculate signed steering and acceleration errors from control references.
    def _calculate_input_error(self) -> pd.DataFrame:
        time_grid = self.controls["t"].to_numpy(dtype=float)
        delta_ref = interpolate_angle_column(
            self.reference_controls,
            "delta_ref",
            time_grid,
        )
        ax_ref = interpolate_column(self.reference_controls, "ax_ref", time_grid)

        delta_error = wrapped_angle_difference(
            self.controls["delta_cmd"].to_numpy(dtype=float),
            delta_ref,
        )
        ax_error = self.controls["ax_cmd"].to_numpy(dtype=float) - ax_ref

        return pd.DataFrame(
            {
                "t": time_grid,
                "delta_e": delta_error,
                "ax_e": ax_error,
            }
        )

    # Calculate absolute tracking-error signals used by the summary plots and metrics.
    def _calculate_tracking_error(self) -> pd.DataFrame:
        x_error = self.state_error["X_e"].to_numpy(dtype=float)
        y_error = self.state_error["Y_e"].to_numpy(dtype=float)
        psi_error = self.state_error["Psi_e"].to_numpy(dtype=float)
        vx_error = self.state_error["vx_e"].to_numpy(dtype=float)

        return pd.DataFrame(
            {
                "t": self.state_error["t"].to_numpy(dtype=float),
                "position_error": np.hypot(x_error, y_error),
                "yaw_error": np.abs(psi_error),
                "speed_error": np.abs(vx_error),
            }
        )


# Resolve an entered path as absolute or relative to the script folder.
def resolve_run_path(path_text: str) -> Path:
    path = Path(path_text).expanduser()
    if not path.is_absolute():
        path = SCRIPT_DIR / path
    return path.resolve()


# Validate that an entered run path exists and contains CSV logs.
def validate_run_directory(run_dir: Path, label: str) -> None:
    if not run_dir.is_dir():
        raise FileNotFoundError(f"{label} run folder does not exist:\n  {run_dir}")

    if not any(run_dir.glob("*.csv")):
        raise FileNotFoundError(f"No CSV files were found in the {label} run folder:\n  {run_dir}")


# Read one numeric column on a requested time grid with linear interpolation.
def interpolate_column(table: pd.DataFrame, key: str, time_grid: np.ndarray) -> np.ndarray:
    source_time = table["t"].to_numpy(dtype=float)
    source_values = table[key].to_numpy(dtype=float)
    return np.interp(time_grid, source_time, source_values)


# Interpolate angular signals without creating false jumps at plus/minus pi.
def interpolate_angle_column(
    table: pd.DataFrame,
    key: str,
    time_grid: np.ndarray,
) -> np.ndarray:
    source_time = table["t"].to_numpy(dtype=float)
    source_values = np.unwrap(table[key].to_numpy(dtype=float))
    interpolated = np.interp(time_grid, source_time, source_values)
    return (interpolated + np.pi) % (2.0 * np.pi) - np.pi


# Wrap an angular difference to the interval [-pi, pi).
def wrapped_angle_difference(a: np.ndarray, b: np.ndarray) -> np.ndarray:
    return (a - b + np.pi) % (2.0 * np.pi) - np.pi


# Unwrap an angle history and move it to the 2*pi branch nearest a reference angle.
def unwrap_and_align_angle(values: np.ndarray, reference_angle: float) -> np.ndarray:
    unwrapped = np.unwrap(np.asarray(values, dtype=float))
    finite_indices = np.flatnonzero(np.isfinite(unwrapped))

    if finite_indices.size == 0 or not np.isfinite(reference_angle):
        return unwrapped

    first_value = float(unwrapped[finite_indices[0]])
    branch_shift = 2.0 * np.pi * round(
        (float(reference_angle) - first_value) / (2.0 * np.pi)
    )
    return unwrapped + branch_shift


# Load the selected Run A and Run B directories.
def load_runs(run_a_dir: Path, run_b_dir: Path) -> tuple[RunData, RunData]:
    validate_run_directory(run_a_dir, "Run A")
    validate_run_directory(run_b_dir, "Run B")

    print("\nDetected CSV files:")
    run_a = RunData(run_a_dir, "Run A")
    run_b = RunData(run_b_dir, "Run B")
    return run_a, run_b


# Warn when the two selected runs do not appear to use the same reference.
def check_reference_compatibility(run_a: RunData, run_b: RunData) -> None:
    t_end = min(float(run_a.reference["t"].iloc[-1]), float(run_b.reference["t"].iloc[-1]))
    if t_end <= 0.0:
        warnings.warn("Reference compatibility check skipped because the overlap is empty.")
        return

    time_grid = np.linspace(0.0, t_end, 1000)

    max_differences: dict[str, float] = {}
    for key in ("X_ref", "Y_ref", "vx_ref"):
        run_a_ref = interpolate_column(run_a.reference, key, time_grid)
        run_b_ref = interpolate_column(run_b.reference, key, time_grid)
        max_differences[key] = float(np.max(np.abs(run_a_ref - run_b_ref)))

    run_a_psi = interpolate_angle_column(run_a.reference, "psi_ref", time_grid)
    run_b_psi = interpolate_angle_column(run_b.reference, "psi_ref", time_grid)
    max_differences["psi_ref"] = float(
        np.max(np.abs(wrapped_angle_difference(run_a_psi, run_b_psi)))
    )

    tolerances = {
        "X_ref": 0.02,
        "Y_ref": 0.02,
        "psi_ref": 0.05,
        "vx_ref": 0.05,
    }

    incompatible = [
        key for key, value in max_differences.items() if value > tolerances[key]
    ]

    print("\nReference compatibility check (maximum interpolated difference):")
    print(f"  X_ref   : {max_differences['X_ref']:.6f} m")
    print(f"  Y_ref   : {max_differences['Y_ref']:.6f} m")
    print(f"  psi_ref : {max_differences['psi_ref']:.6f} rad")
    print(f"  vx_ref  : {max_differences['vx_ref']:.6f} m/s")

    if incompatible:
        warnings.warn(
            "The two runs may not use the same reference. Large differences found in: "
            + ", ".join(incompatible)
        )


# Save one comparison figure to the selected output directory.
def save_figure(fig: plt.Figure, stem: str, output_dir: Path) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)
    output_path = output_dir / f"{stem}.{SAVE_FORMAT}"
    fig.tight_layout()
    fig.savefig(output_path, format=SAVE_FORMAT, bbox_inches="tight")
    plt.close(fig)


# Extend an axis slightly so the legend does not cover the main signals.
def reserve_right_space_for_legend(axis: plt.Axes, fraction: float = 0.25) -> None:
    x_min, x_max = axis.get_xlim()
    x_range = x_max - x_min

    if x_range > 0.0:
        axis.set_xlim(x_min, x_max + fraction * x_range)

    axis.legend(loc="upper right", framealpha=0.90, fontsize=9)


# Add Run A, Run B, and reference curves to one time-series axis.
def add_three_curves(
    axis: plt.Axes,
    run_a_time: np.ndarray,
    run_a_values: np.ndarray,
    run_b_time: np.ndarray,
    run_b_values: np.ndarray,
    ref_time: np.ndarray,
    ref_values: np.ndarray,
) -> None:
    axis.plot(run_a_time, run_a_values, label="NMPC")
    axis.plot(run_b_time, run_b_values, linestyle="--", label="FLMPC")
    axis.plot(ref_time, ref_values, linestyle="-.", label="Reference")
    axis.grid(True)
    reserve_right_space_for_legend(axis)


# Add Run A and Run B signed error curves to one axis.
def add_two_error_curves(
    axis: plt.Axes,
    run_a_time: np.ndarray,
    run_a_values: np.ndarray,
    run_b_time: np.ndarray,
    run_b_values: np.ndarray,
) -> None:
    axis.plot(run_a_time, run_a_values, label="NMPC")
    axis.plot(run_b_time, run_b_values, linestyle="--", label="FLMPC")
    axis.axhline(0.0, linestyle="-.", linewidth=1.0, label="Reference")
    axis.grid(True)
    reserve_right_space_for_legend(axis)


# Select which run supplies the single reference curve shown in the figures.
def selected_reference(run_a: RunData, run_b: RunData) -> RunData:
    source = REFERENCE_SOURCE.strip().upper()
    if source == "A":
        return run_a
    if source == "B":
        return run_b
    raise ValueError("REFERENCE_SOURCE must be either 'A' or 'B'.")


# Plot the XY trajectory comparison.
def plot_trajectory(run_a: RunData, run_b: RunData, ref_run: RunData, output_dir: Path) -> None:
    fig, axis = plt.subplots(1, 1, figsize=(7.0, 5.0))

    axis.plot(run_a.states["X"], run_a.states["Y"], label="NMPC")
    axis.plot(run_b.states["X"], run_b.states["Y"], linestyle="--", label="FLMPC")
    axis.plot(
        ref_run.reference["X_ref"],
        ref_run.reference["Y_ref"],
        linestyle="-.",
        label="Reference",
    )

    axis.set_xlabel("X [m]")
    axis.set_ylabel("Y [m]")
    axis.set_title("Trajectory Tracking Comparison")
    axis.axis("equal")
    axis.grid(True)
    reserve_right_space_for_legend(axis, fraction=0.20)

    save_figure(fig, "trajectory_tracking_comparison", output_dir)


# Plot the measured state histories together with the selected reference.
def plot_states(run_a: RunData, run_b: RunData, ref_run: RunData, output_dir: Path) -> None:
    signals = (
        ("X", "X_ref", r"$X$ (m)"),
        ("Y", "Y_ref", r"$Y$ (m)"),
        ("psi", "psi_ref", r"$\Psi$ (rad)"),
        ("vx", "vx_ref", r"$v_x$ (m/s)"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (state_key, ref_key, title) in zip(axes[:, 0], signals):
        run_a_values = run_a.states[state_key].to_numpy(dtype=float)
        run_b_values = run_b.states[state_key].to_numpy(dtype=float)
        reference_values = ref_run.reference[ref_key].to_numpy(dtype=float)

        # Display yaw histories continuously on one common 2*pi branch.
        # This changes only the visualization; wrapped yaw-error metrics remain unchanged.
        if state_key == "psi":
            reference_values = np.unwrap(reference_values)
            finite_reference = reference_values[np.isfinite(reference_values)]
            if finite_reference.size == 0:
                raise ValueError(f"No finite psi_ref values found in {ref_run.run_dir}")

            reference_angle = float(finite_reference[0])
            reference_values = unwrap_and_align_angle(reference_values, reference_angle)
            run_a_values = unwrap_and_align_angle(run_a_values, reference_angle)
            run_b_values = unwrap_and_align_angle(run_b_values, reference_angle)

        add_three_curves(
            axis,
            run_a.states["t"].to_numpy(dtype=float),
            run_a_values,
            run_b.states["t"].to_numpy(dtype=float),
            run_b_values,
            ref_run.reference["t"].to_numpy(dtype=float),
            reference_values,
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")

    fig.suptitle("QCar2 States Comparison")
    save_figure(fig, "states_comparison", output_dir)


# Plot signed state errors calculated from the raw logs.
def plot_state_errors(run_a: RunData, run_b: RunData, output_dir: Path) -> None:
    signals = (
        ("X_e", r"$X_e$ (m)"),
        ("Y_e", r"$Y_e$ (m)"),
        ("Psi_e", r"$\Psi_e$ (rad)"),
        ("vx_e", r"$v_{x,e}$ (m/s)"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (key, title) in zip(axes[:, 0], signals):
        add_two_error_curves(
            axis,
            run_a.state_error["t"].to_numpy(dtype=float),
            run_a.state_error[key].to_numpy(dtype=float),
            run_b.state_error["t"].to_numpy(dtype=float),
            run_b.state_error[key].to_numpy(dtype=float),
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")

    fig.suptitle("QCar2 State Error Comparison")
    save_figure(fig, "state_error_comparison", output_dir)


# Plot the commanded speed, steering, and acceleration histories.
def plot_controls(run_a: RunData, run_b: RunData, output_dir: Path) -> None:
    signals = (
        ("vx_cmd", r"$v_{x,cmd}$ (m/s)"),
        ("delta_cmd", r"$\delta_{cmd}$ (rad)"),
        ("ax_cmd", r"$a_{x,cmd}$ $\left(\mathrm{m/s^2}\right)$"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (key, title) in zip(axes[:, 0], signals):
        axis.plot(run_a.controls["t"], run_a.controls[key], label="NMPC")
        axis.plot(run_b.controls["t"], run_b.controls[key], linestyle="--", label="FLMPC")
        axis.set_title(title)
        axis.set_xlabel("t (s)")
        axis.grid(True)
        reserve_right_space_for_legend(axis)

    fig.suptitle("QCar2 Control Comparison")
    save_figure(fig, "controls_comparison", output_dir)


# Plot steering and acceleration commands together with the selected reference inputs.
def plot_inputs(run_a: RunData, run_b: RunData, ref_run: RunData, output_dir: Path) -> None:
    signals = (
        ("delta_cmd", "delta_ref", r"$\delta$ (rad)"),
        ("ax_cmd", "ax_ref", r"$a_x$ $\left(\mathrm{m/s^2}\right)$"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (input_key, ref_key, title) in zip(axes[:, 0], signals):
        add_three_curves(
            axis,
            run_a.controls["t"].to_numpy(dtype=float),
            run_a.controls[input_key].to_numpy(dtype=float),
            run_b.controls["t"].to_numpy(dtype=float),
            run_b.controls[input_key].to_numpy(dtype=float),
            ref_run.reference_controls["t"].to_numpy(dtype=float),
            ref_run.reference_controls[ref_key].to_numpy(dtype=float),
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")

    fig.suptitle("QCar2 Input Comparison")
    save_figure(fig, "input_comparison", output_dir)


# Plot signed steering and acceleration tracking errors.
def plot_input_errors(run_a: RunData, run_b: RunData, output_dir: Path) -> None:
    signals = (
        ("delta_e", r"$\delta_e$ (rad)"),
        ("ax_e", r"$a_{x,e}$ $\left(\mathrm{m/s^2}\right)$"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (key, title) in zip(axes[:, 0], signals):
        add_two_error_curves(
            axis,
            run_a.input_error["t"].to_numpy(dtype=float),
            run_a.input_error[key].to_numpy(dtype=float),
            run_b.input_error["t"].to_numpy(dtype=float),
            run_b.input_error[key].to_numpy(dtype=float),
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")

    fig.suptitle("QCar2 Input Error Comparison")
    save_figure(fig, "input_error_comparison", output_dir)


# Plot absolute position, yaw, and speed tracking errors.
def plot_tracking_errors(run_a: RunData, run_b: RunData, output_dir: Path) -> None:
    signals = (
        ("position_error", "Position error (m)"),
        ("yaw_error", "Yaw error (rad)"),
        ("speed_error", "Speed error (m/s)"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (key, title) in zip(axes[:, 0], signals):
        axis.plot(run_a.tracking_error["t"], run_a.tracking_error[key], label="NMPC")
        axis.plot(
            run_b.tracking_error["t"],
            run_b.tracking_error[key],
            linestyle="--",
            label="FLMPC",
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")
        axis.grid(True)
        reserve_right_space_for_legend(axis)

    fig.suptitle("Tracking Error Comparison")
    save_figure(fig, "tracking_error_comparison", output_dir)


# Calculate position-tracking RMSE, MAE, and maximum error.
def tracking_error_statistics(run: RunData) -> dict[str, float]:
    values = run.tracking_error["position_error"].to_numpy(dtype=float)
    values = values[np.isfinite(values)]

    if values.size == 0:
        raise ValueError(f"No finite position_error values found in {run.run_dir}")

    return {
        "rmse_position_m": float(np.sqrt(np.mean(values ** 2))),
        "mae_position_m": float(np.mean(np.abs(values))),
        "max_position_error_m": float(np.max(np.abs(values))),
    }


# Extract only finite solver-time samples.
def finite_solve_times(run: RunData) -> np.ndarray:
    values = run.solve_times["solve_time"].to_numpy(dtype=float)
    return values[np.isfinite(values)]


# Calculate mean and maximum solver-time statistics for one run.
def solve_time_statistics(run: RunData) -> dict[str, float | int | str]:
    values = finite_solve_times(run)
    if values.size == 0:
        raise ValueError(f"No finite solve_time values found in {run.run_dir}")

    return {
        "controller": run.controller_name,
        "run": run.run_dir.name,
        "number_of_samples": int(values.size),
        "mean_solve_time_s": float(np.mean(values)),
        "mean_solve_time_ms": float(1000.0 * np.mean(values)),
        "max_solve_time_s": float(np.max(values)),
        "max_solve_time_ms": float(1000.0 * np.max(values)),
    }


# Plot solver time and return statistics for the text/CSV summary.
def plot_solve_times(run_a: RunData, run_b: RunData, output_dir: Path) -> tuple[dict, dict]:
    run_a_stats = solve_time_statistics(run_a)
    run_b_stats = solve_time_statistics(run_b)

    fig, axis = plt.subplots(1, 1, figsize=(7.0, 3.8))

    run_a_line, = axis.plot(
        run_a.solve_times["t"],
        run_a.solve_times["solve_time"],
        label="NMPC",
    )
    run_b_line, = axis.plot(
        run_b.solve_times["t"],
        run_b.solve_times["solve_time"],
        linestyle="--",
        label="FLMPC",
    )

    axis.axhline(
        run_a_stats["mean_solve_time_s"],
        linestyle=":",
        linewidth=1.2,
        color=run_a_line.get_color(),
        label="NMPC mean time",
    )
    axis.axhline(
        run_b_stats["mean_solve_time_s"],
        linestyle=":",
        linewidth=1.2,
        color=run_b_line.get_color(),
        label="FLMPC mean time",
    )

    axis.set_title("Computational Time Comparison")
    axis.set_xlabel("t (s)")
    axis.set_ylabel("Solve time (s)")
    axis.grid(True)
    reserve_right_space_for_legend(axis, fraction=0.30)

    save_figure(fig, "solve_time_comparison", output_dir)
    return run_a_stats, run_b_stats


# Save solver-time and position-error statistics as CSV and plain text.
def save_solve_time_summary(
    run_a_stats: dict,
    run_b_stats: dict,
    run_a_tracking_stats: dict,
    run_b_tracking_stats: dict,
    output_dir: Path,
) -> None:
    output_dir.mkdir(parents=True, exist_ok=True)

    csv_path = output_dir / "solve_time_summary.csv"
    fieldnames = [
        "controller",
        "run",
        "number_of_samples",
        "mean_solve_time_s",
        "mean_solve_time_ms",
        "max_solve_time_s",
        "max_solve_time_ms",
    ]

    with csv_path.open("w", newline="", encoding="utf-8") as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerow(run_a_stats)
        writer.writerow(run_b_stats)

    speed_ratio = float(run_a_stats["mean_solve_time_s"]) / float(
        run_b_stats["mean_solve_time_s"]
    )

    txt_path = output_dir / "solve_time_summary.txt"
    txt_path.write_text(
        "Mk2 generic folder comparison\n"
        "====================\n"
        f"Run A: {run_a_stats['run']}\n"
        f"Run B: {run_b_stats['run']}\n\n"
        f"Run A mean solve time: {run_a_stats['mean_solve_time_s']:.9f} s "
        f"({run_a_stats['mean_solve_time_ms']:.3f} ms)\n"
        f"Run B mean solve time: {run_b_stats['mean_solve_time_s']:.9f} s "
        f"({run_b_stats['mean_solve_time_ms']:.3f} ms)\n"
        f"Run A / Run B mean solve-time ratio: {speed_ratio:.3f} times\n\n"
        "Position tracking error\n"
        "-----------------------\n"
        f"Run A RMSE position: {run_a_tracking_stats['rmse_position_m']:.6f} m\n"
        f"Run A MAE position: {run_a_tracking_stats['mae_position_m']:.6f} m\n"
        f"Run A max position error: {run_a_tracking_stats['max_position_error_m']:.6f} m\n\n"
        f"Run B RMSE position: {run_b_tracking_stats['rmse_position_m']:.6f} m\n"
        f"Run B MAE position: {run_b_tracking_stats['mae_position_m']:.6f} m\n"
        f"Run B max position error: {run_b_tracking_stats['max_position_error_m']:.6f} m\n",
        encoding="utf-8",
    )


# Parse optional command-line paths while keeping edit-at-top usage available.
def parse_arguments() -> argparse.Namespace:
    parser = argparse.ArgumentParser(
        description=(
            "Compare any two compatible QCar2/QLabs result folders. "
            "CSV files are detected from their columns, not exact filenames."
        )
    )
    parser.add_argument(
        "run_a_path",
        nargs="?",
        default=RUN_A_PATH,
        help="Run A folder; absolute or relative to this script.",
    )
    parser.add_argument(
        "run_b_path",
        nargs="?",
        default=RUN_B_PATH,
        help="Run B folder; absolute or relative to this script.",
    )
    parser.add_argument(
        "--output",
        default=OUTPUT_FOLDER_NAME,
        help="Output folder; absolute or relative to this script.",
    )
    return parser.parse_args()


# Run the complete comparison for any two compatible result folders.
def main() -> None:
    args = parse_arguments()

    run_a_dir = resolve_run_path(args.run_a_path)
    run_b_dir = resolve_run_path(args.run_b_path)
    output_dir = resolve_run_path(args.output)
    output_dir.mkdir(parents=True, exist_ok=True)

    print("Mk2 generic folder comparison:")
    print(f"Run A : {run_a_dir}")
    print(f"Run B : {run_b_dir}")
    print(f"Output   : {output_dir}")

    run_a, run_b = load_runs(run_a_dir, run_b_dir)
    check_reference_compatibility(run_a, run_b)
    ref_run = selected_reference(run_a, run_b)

    plot_trajectory(run_a, run_b, ref_run, output_dir)
    plot_states(run_a, run_b, ref_run, output_dir)
    plot_state_errors(run_a, run_b, output_dir)
    plot_controls(run_a, run_b, output_dir)
    plot_inputs(run_a, run_b, ref_run, output_dir)
    plot_input_errors(run_a, run_b, output_dir)
    plot_tracking_errors(run_a, run_b, output_dir)
    run_a_stats, run_b_stats = plot_solve_times(run_a, run_b, output_dir)

    run_a_tracking_stats = tracking_error_statistics(run_a)
    run_b_tracking_stats = tracking_error_statistics(run_b)

    save_solve_time_summary(
        run_a_stats,
        run_b_stats,
        run_a_tracking_stats,
        run_b_tracking_stats,
        output_dir,
    )

    speed_ratio = float(run_a_stats["mean_solve_time_s"]) / float(
        run_b_stats["mean_solve_time_s"]
    )
    print(f"\nRun A / Run B mean solve-time ratio: {speed_ratio:.3f} times")
    print("Comparison finished!")


if __name__ == "__main__":
    main()
