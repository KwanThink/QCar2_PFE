from __future__ import annotations

from pathlib import Path
import csv
import warnings

import numpy as np
import pandas as pd

import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt


# =============================================================================
# INPUT SELECTION
# Change only these run names when you want to compare another pair of runs.
# =============================================================================
NMPC_RUN_NAME = "run_Mk1Gu_1_Done"
FLMPC_RUN_NAME = "run_ObsAv_Mk1_1_Done"

# Folder names inside QCar2_PFE.
NMPC_PROJECT_FOLDER = "NLMPC_Mk1Gu"
FLMPC_PROJECT_FOLDER = "OAMPC_Mk1"

# Choose which run provides the single reference curve shown in the figures.
# The script checks whether the references used by both runs are compatible.
REFERENCE_SOURCE = "NMPC"  # "NMPC" or "FLMPC"

# Output format. SVG is convenient for LaTeX and matches the existing log plots.
SAVE_FORMAT = "svg"


# =============================================================================
# PATHS
# Expected folder structure:
# QCar2_PFE/
#   NLMPC_Mk1Gu/results/run_Mk1Gu_x/
#   OAMPC_Mk1/results/run_ObsAv_Mk1_x/
#   Mk1_Comparison/compare_mk1.py
#   Mk1_Comparison/comp_results/
# =============================================================================
SCRIPT_DIR = Path(__file__).resolve().parent
QCAR2_PFE_DIR = SCRIPT_DIR.parent

NMPC_RUN_DIR = QCAR2_PFE_DIR / NMPC_PROJECT_FOLDER / "results" / NMPC_RUN_NAME
FLMPC_RUN_DIR = QCAR2_PFE_DIR / FLMPC_PROJECT_FOLDER / "results" / FLMPC_RUN_NAME
OUTPUT_DIR = SCRIPT_DIR / "comp_results"


REQUIRED_FILES = (
    "states.csv",
    "controls.csv",
    "reference_used.csv",
    "reference_controls.csv",
    "state_error.csv",
    "input_error.csv",
    "tracking_error.csv",
    "solve_times.csv",
)


class RunData:
    """Container for the CSV files needed by the comparison plots."""

    def __init__(self, run_dir: Path, controller_name: str) -> None:
        self.run_dir = run_dir
        self.controller_name = controller_name

        self.states = self._read_csv("states.csv")
        self.controls = self._read_csv("controls.csv")
        self.reference = self._read_csv("reference_used.csv")
        self.reference_controls = self._read_csv("reference_controls.csv")
        self.state_error = self._read_csv("state_error.csv")
        self.input_error = self._read_csv("input_error.csv")
        self.tracking_error = self._read_csv("tracking_error.csv")
        self.solve_times = self._read_csv("solve_times.csv")

        self._normalize_all_time_columns()

    def _read_csv(self, filename: str) -> pd.DataFrame:
        path = self.run_dir / filename
        if not path.is_file():
            raise FileNotFoundError(f"Missing required file: {path}")
        return pd.read_csv(path)

    def _normalize_all_time_columns(self) -> None:
        """Shift every log so the first recorded sample is t = 0 s."""
        tables = (
            self.states,
            self.controls,
            self.reference,
            self.reference_controls,
            self.state_error,
            self.input_error,
            self.tracking_error,
            self.solve_times,
        )

        for table in tables:
            if "t" not in table.columns:
                raise KeyError(
                    f"Expected a 't' column in one of the CSV files from {self.run_dir}."
                )
            table["t"] = table["t"].astype(float) - float(table["t"].iloc[0])


# =============================================================================
# VALIDATION AND LOADING
# =============================================================================
def list_available_runs(project_folder: str) -> list[str]:
    results_dir = QCAR2_PFE_DIR / project_folder / "results"
    if not results_dir.is_dir():
        return []
    return sorted(path.name for path in results_dir.iterdir() if path.is_dir())


def validate_run_directory(run_dir: Path, project_folder: str) -> None:
    if run_dir.is_dir():
        return

    available = list_available_runs(project_folder)
    available_text = ", ".join(available) if available else "none found"
    raise FileNotFoundError(
        f"Run folder does not exist:\n  {run_dir}\n"
        f"Available runs in {project_folder}/results: {available_text}"
    )


def load_runs() -> tuple[RunData, RunData]:
    validate_run_directory(NMPC_RUN_DIR, NMPC_PROJECT_FOLDER)
    validate_run_directory(FLMPC_RUN_DIR, FLMPC_PROJECT_FOLDER)

    nmpc = RunData(NMPC_RUN_DIR, "NMPC")
    flmpc = RunData(FLMPC_RUN_DIR, "FLMPC")
    return nmpc, flmpc


# =============================================================================
# REFERENCE CHECK
# =============================================================================
def interpolate_column(table: pd.DataFrame, key: str, time_grid: np.ndarray) -> np.ndarray:
    return np.interp(
        time_grid,
        table["t"].to_numpy(dtype=float),
        table[key].to_numpy(dtype=float),
    )


def wrapped_angle_difference(a: np.ndarray, b: np.ndarray) -> np.ndarray:
    return (a - b + np.pi) % (2.0 * np.pi) - np.pi


def check_reference_compatibility(nmpc: RunData, flmpc: RunData) -> None:
    """Warn when the selected runs do not appear to use the same reference."""
    t_end = min(float(nmpc.reference["t"].iloc[-1]), float(flmpc.reference["t"].iloc[-1]))
    if t_end <= 0.0:
        warnings.warn("Reference compatibility check skipped because the overlap is empty.")
        return

    time_grid = np.linspace(0.0, t_end, 1000)

    max_differences: dict[str, float] = {}
    for key in ("X_ref", "Y_ref", "vx_ref"):
        nmpc_ref = interpolate_column(nmpc.reference, key, time_grid)
        flmpc_ref = interpolate_column(flmpc.reference, key, time_grid)
        max_differences[key] = float(np.max(np.abs(nmpc_ref - flmpc_ref)))

    nmpc_psi = interpolate_column(nmpc.reference, "psi_ref", time_grid)
    flmpc_psi = interpolate_column(flmpc.reference, "psi_ref", time_grid)
    max_differences["psi_ref"] = float(
        np.max(np.abs(wrapped_angle_difference(nmpc_psi, flmpc_psi)))
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


# =============================================================================
# PLOT HELPERS
# =============================================================================
def save_figure(fig: plt.Figure, stem: str) -> None:
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    output_path = OUTPUT_DIR / f"{stem}.{SAVE_FORMAT}"
    fig.tight_layout()
    fig.savefig(output_path, format=SAVE_FORMAT, bbox_inches="tight")
    plt.close(fig)


def add_three_curves(
    axis: plt.Axes,
    nmpc_time: np.ndarray,
    nmpc_values: np.ndarray,
    flmpc_time: np.ndarray,
    flmpc_values: np.ndarray,
    ref_time: np.ndarray,
    ref_values: np.ndarray,
) -> None:
    axis.plot(nmpc_time, nmpc_values, label="NMPC")
    axis.plot(flmpc_time, flmpc_values, linestyle="--", label="FLMPC")
    axis.plot(ref_time, ref_values, linestyle="-.", label="Reference")
    axis.grid(True)
    axis.legend()


def add_two_error_curves(
    axis: plt.Axes,
    nmpc_time: np.ndarray,
    nmpc_values: np.ndarray,
    flmpc_time: np.ndarray,
    flmpc_values: np.ndarray,
) -> None:
    axis.plot(nmpc_time, nmpc_values, label="NMPC")
    axis.plot(flmpc_time, flmpc_values, linestyle="--", label="FLMPC")
    axis.axhline(0.0, linestyle="-.", linewidth=1.0, label="Reference = 0")
    axis.grid(True)
    axis.legend()


def selected_reference(nmpc: RunData, flmpc: RunData) -> RunData:
    source = REFERENCE_SOURCE.strip().upper()
    if source == "NMPC":
        return nmpc
    if source == "FLMPC":
        return flmpc
    raise ValueError("REFERENCE_SOURCE must be either 'NMPC' or 'FLMPC'.")


# =============================================================================
# COMPARISON FIGURES
# =============================================================================
def plot_trajectory(nmpc: RunData, flmpc: RunData, ref_run: RunData) -> None:
    fig, axis = plt.subplots(1, 1, figsize=(7.0, 5.0))

    axis.plot(
        nmpc.states["X"],
        nmpc.states["Y"],
        label="NMPC",
    )
    axis.plot(
        flmpc.states["X"],
        flmpc.states["Y"],
        linestyle="--",
        label="FLMPC",
    )
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
    axis.legend()

    save_figure(fig, "trajectory_tracking_comparison")


def plot_states(nmpc: RunData, flmpc: RunData, ref_run: RunData) -> None:
    signals = (
        ("X", "X_ref", r"$X$ (m)"),
        ("Y", "Y_ref", r"$Y$ (m)"),
        ("psi", "psi_ref", r"$\Psi$ (rad)"),
        ("vx", "vx_ref", r"$v_x$ (m/s)"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (state_key, ref_key, title) in zip(axes[:, 0], signals):
        add_three_curves(
            axis,
            nmpc.states["t"].to_numpy(dtype=float),
            nmpc.states[state_key].to_numpy(dtype=float),
            flmpc.states["t"].to_numpy(dtype=float),
            flmpc.states[state_key].to_numpy(dtype=float),
            ref_run.reference["t"].to_numpy(dtype=float),
            ref_run.reference[ref_key].to_numpy(dtype=float),
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")

    fig.suptitle("QCar2 States Comparison")
    save_figure(fig, "states_comparison")


def plot_state_errors(nmpc: RunData, flmpc: RunData) -> None:
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
            nmpc.state_error["t"].to_numpy(dtype=float),
            nmpc.state_error[key].to_numpy(dtype=float),
            flmpc.state_error["t"].to_numpy(dtype=float),
            flmpc.state_error[key].to_numpy(dtype=float),
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")

    fig.suptitle("QCar2 State Error Comparison")
    save_figure(fig, "state_error_comparison")


def plot_controls(nmpc: RunData, flmpc: RunData) -> None:
    signals = (
        ("vx_cmd", r"$v_{x,cmd}$ (m/s)"),
        ("delta_cmd", r"$\delta_{cmd}$ (rad)"),
        ("ax_cmd", r"$a_{x,cmd}$ $\left(\mathrm{m/s^2}\right)$"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (key, title) in zip(axes[:, 0], signals):
        axis.plot(nmpc.controls["t"], nmpc.controls[key], label="NMPC")
        axis.plot(flmpc.controls["t"], flmpc.controls[key], linestyle="--", label="FLMPC")
        axis.set_title(title)
        axis.set_xlabel("t (s)")
        axis.grid(True)
        axis.legend()

    fig.suptitle("QCar2 Control Comparison")
    save_figure(fig, "controls_comparison")


def plot_inputs(nmpc: RunData, flmpc: RunData, ref_run: RunData) -> None:
    signals = (
        ("delta_cmd", "delta_ref", r"$\delta$ (rad)"),
        ("ax_cmd", "ax_ref", r"$a_x$ $\left(\mathrm{m/s^2}\right)$"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (input_key, ref_key, title) in zip(axes[:, 0], signals):
        add_three_curves(
            axis,
            nmpc.controls["t"].to_numpy(dtype=float),
            nmpc.controls[input_key].to_numpy(dtype=float),
            flmpc.controls["t"].to_numpy(dtype=float),
            flmpc.controls[input_key].to_numpy(dtype=float),
            ref_run.reference_controls["t"].to_numpy(dtype=float),
            ref_run.reference_controls[ref_key].to_numpy(dtype=float),
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")

    fig.suptitle("QCar2 Input Comparison")
    save_figure(fig, "input_comparison")


def plot_input_errors(nmpc: RunData, flmpc: RunData) -> None:
    signals = (
        ("delta_e", r"$\delta_e$ (rad)"),
        ("ax_e", r"$a_{x,e}$ $\left(\mathrm{m/s^2}\right)$"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (key, title) in zip(axes[:, 0], signals):
        add_two_error_curves(
            axis,
            nmpc.input_error["t"].to_numpy(dtype=float),
            nmpc.input_error[key].to_numpy(dtype=float),
            flmpc.input_error["t"].to_numpy(dtype=float),
            flmpc.input_error[key].to_numpy(dtype=float),
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")

    fig.suptitle("QCar2 Input Error Comparison")
    save_figure(fig, "input_error_comparison")


def plot_tracking_errors(nmpc: RunData, flmpc: RunData) -> None:
    signals = (
        ("position_error", "Position error (m)"),
        ("yaw_error", "Yaw error (rad)"),
        ("speed_error", "Speed error (m/s)"),
    )

    fig, axes = plt.subplots(len(signals), 1, figsize=(7.0, 2.8 * len(signals)), squeeze=False)

    for axis, (key, title) in zip(axes[:, 0], signals):
        axis.plot(nmpc.tracking_error["t"], nmpc.tracking_error[key], label="NMPC")
        axis.plot(
            flmpc.tracking_error["t"],
            flmpc.tracking_error[key],
            linestyle="--",
            label="FLMPC",
        )
        axis.set_title(title)
        axis.set_xlabel("t (s)")
        axis.grid(True)
        axis.legend()

    fig.suptitle("Tracking Error Comparison")
    save_figure(fig, "tracking_error_comparison")



def tracking_error_statistics(run: RunData) -> dict[str, float]:
    """Calculate position-tracking RMSE, MAE, and maximum error."""
    values = run.tracking_error["position_error"].to_numpy(dtype=float)
    values = values[np.isfinite(values)]

    if values.size == 0:
        raise ValueError(f"No finite position_error values found in {run.run_dir}")

    return {
        "rmse_position_m": float(np.sqrt(np.mean(values ** 2))),
        "mae_position_m": float(np.mean(np.abs(values))),
        "max_position_error_m": float(np.max(np.abs(values))),
    }


def finite_solve_times(run: RunData) -> np.ndarray:
    values = run.solve_times["solve_time"].to_numpy(dtype=float)
    return values[np.isfinite(values)]


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


def plot_solve_times(nmpc: RunData, flmpc: RunData) -> tuple[dict, dict]:
    nmpc_stats = solve_time_statistics(nmpc)
    flmpc_stats = solve_time_statistics(flmpc)

    fig, axis = plt.subplots(1, 1, figsize=(7.0, 3.8))

    nmpc_line, = axis.plot(
        nmpc.solve_times["t"],
        nmpc.solve_times["solve_time"],
        label="NMPC",
    )
    flmpc_line, = axis.plot(
        flmpc.solve_times["t"],
        flmpc.solve_times["solve_time"],
        linestyle="--",
        label="FLMPC",
    )

    axis.axhline(
        nmpc_stats["mean_solve_time_s"],
        linestyle=":",
        linewidth=1.2,
        color=nmpc_line.get_color(),
        label=f"NMPC mean = {nmpc_stats['mean_solve_time_ms']:.3f} ms",
    )
    axis.axhline(
        flmpc_stats["mean_solve_time_s"],
        linestyle=":",
        linewidth=1.2,
        color=flmpc_line.get_color(),
        label=f"FLMPC mean = {flmpc_stats['mean_solve_time_ms']:.3f} ms",
    )

    axis.set_title("Computational Time Comparison")
    axis.set_xlabel("t (s)")
    axis.set_ylabel("Solve time (s)")
    axis.grid(True)
    axis.legend()

    save_figure(fig, "solve_time_comparison")
    return nmpc_stats, flmpc_stats


# =============================================================================
# SUMMARY FILES
# =============================================================================
def save_solve_time_summary(
    nmpc_stats: dict,
    flmpc_stats: dict,
    nmpc_tracking_stats: dict,
    flmpc_tracking_stats: dict,
) -> None:
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    csv_path = OUTPUT_DIR / "solve_time_summary.csv"
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
        writer.writerow(nmpc_stats)
        writer.writerow(flmpc_stats)

    speed_ratio = float(nmpc_stats["mean_solve_time_s"]) / float(
        flmpc_stats["mean_solve_time_s"]
    )

    txt_path = OUTPUT_DIR / "solve_time_summary.txt"
    txt_path.write_text(
        "Mk1 solve-time comparison\n"
        "=========================\n"
        f"NMPC run:  {nmpc_stats['run']}\n"
        f"FLMPC run: {flmpc_stats['run']}\n\n"
        f"NMPC mean solve time:  {nmpc_stats['mean_solve_time_s']:.9f} s "
        f"({nmpc_stats['mean_solve_time_ms']:.3f} ms)\n"
        f"FLMPC mean solve time: {flmpc_stats['mean_solve_time_s']:.9f} s "
        f"({flmpc_stats['mean_solve_time_ms']:.3f} ms)\n"
        f"NMPC / FLMPC mean solve-time ratio: {speed_ratio:.3f} times\n\n"
        "Position tracking error\n"
        "-----------------------\n"
        f"NMPC RMSE position:          {nmpc_tracking_stats['rmse_position_m']:.6f} m\n"
        f"NMPC MAE position:           {nmpc_tracking_stats['mae_position_m']:.6f} m\n"
        f"NMPC max position error:     {nmpc_tracking_stats['max_position_error_m']:.6f} m\n\n"
        f"FLMPC RMSE position:         {flmpc_tracking_stats['rmse_position_m']:.6f} m\n"
        f"FLMPC MAE position:          {flmpc_tracking_stats['mae_position_m']:.6f} m\n"
        f"FLMPC max position error:    {flmpc_tracking_stats['max_position_error_m']:.6f} m\n",
        encoding="utf-8",
    )



# =============================================================================
# MAIN
# =============================================================================
def main() -> None:
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

    print("Mk1 comparison:")
    print(f"NMPC run : {NMPC_RUN_DIR}")
    print(f"FLMPC run: {FLMPC_RUN_DIR}")

    nmpc, flmpc = load_runs()
    check_reference_compatibility(nmpc, flmpc)
    ref_run = selected_reference(nmpc, flmpc)

    plot_trajectory(nmpc, flmpc, ref_run)
    plot_states(nmpc, flmpc, ref_run)
    plot_state_errors(nmpc, flmpc)
    plot_controls(nmpc, flmpc)
    plot_inputs(nmpc, flmpc, ref_run)
    plot_input_errors(nmpc, flmpc)
    plot_tracking_errors(nmpc, flmpc)
    nmpc_stats, flmpc_stats = plot_solve_times(nmpc, flmpc)

    nmpc_tracking_stats = tracking_error_statistics(nmpc)
    flmpc_tracking_stats = tracking_error_statistics(flmpc)

    save_solve_time_summary(
        nmpc_stats,
        flmpc_stats,
        nmpc_tracking_stats,
        flmpc_tracking_stats,
    )

    speed_ratio = float(nmpc_stats["mean_solve_time_s"]) / float(
        flmpc_stats["mean_solve_time_s"]
    )

    # print("\nMean solve time: ")
    # print(
    #     f"NMPC : {nmpc_stats['mean_solve_time_s']:.9f} s "
    #     f"= {nmpc_stats['mean_solve_time_ms']:.3f} ms"
    # )
    # print(
    #     f"FLMPC: {flmpc_stats['mean_solve_time_s']:.9f} s "
    #     f"= {flmpc_stats['mean_solve_time_ms']:.3f} ms"
    # )
    # print(f"NMPC / FLMPC ratio: {speed_ratio:.3f} times")
    print("Comparison finished!")

if __name__ == "__main__":
    main()
