#!/usr/bin/env python3
"""QCar2 Mk3: CasADi NLMPC tracking of the Mk1 flatness/Bezier trajectory in QLabs.

Folder layout expected in E:\\VSC_IDE\\Qcar_PFE:

    Qcar_PFE/
    |-- Qcar2_Mk3_nlmpc.py                 <- this file
    |-- python/                            <- Quanser Python library folder from python.zip
    |-- Qcar2_TrajGen/
    |   `-- qcar2_flat_bezier_Mk1.py       <- preferred location
    `-- qcar2_flat_bezier_Mk1.py           <- also accepted as fallback

The script:
  1. loads or auto-generates the Mk1 CSV trajectory,
  2. spawns a QCar2 in Quanser Interactive Labs,
  3. draws the reference path and waypoint markers,
  4. tracks the reference with a single-track NLMPC solved by CasADi/IPOPT,
  5. saves a CSV log of the simulation run.

Model used by the NLMPC:
    x = [X, Y, psi, vx]^T
    u = [delta, ax]^T
    X_dot   = vx*cos(psi)
    Y_dot   = vx*sin(psi)
    psi_dot = vx/L*tan(delta)
    vx_dot  = ax
"""

from __future__ import annotations

import csv
import math
import sys
import time
from dataclasses import dataclass
from datetime import datetime
from pathlib import Path
from typing import Any

import numpy as np

# =============================================================================
# Local Quanser Python library path
# =============================================================================
SCRIPT_DIR = Path(__file__).resolve().parent
QUANSER_PYTHON_DIRS = [
    SCRIPT_DIR / "python",
    SCRIPT_DIR.parent / "python",
]

for quanser_dir in QUANSER_PYTHON_DIRS:
    if quanser_dir.exists() and str(quanser_dir) not in sys.path:
        sys.path.insert(0, str(quanser_dir))

try:
    from qvl.basic_shape import QLabsBasicShape
    from qvl.qlabs import QuanserInteractiveLabs
    from qvl.qcar2 import QLabsQCar2
except ModuleNotFoundError as exc:
    raise ModuleNotFoundError(
        "Cannot import Quanser qvl modules. Unzip the Quanser 'python' folder "
        "into the QCar_PFE folder or install the Quanser Python libraries, then run again."
    ) from exc

try:
    import casadi as ca
except ModuleNotFoundError as exc:
    raise ModuleNotFoundError(
        "CasADi is not installed in the active Python environment. Activate Qcar_venv and run: "
        "python -m pip install casadi"
    ) from exc

# =============================================================================
# Mk1 flatness Bezier trajectory generator location
# =============================================================================
TRAJGEN_DIR = SCRIPT_DIR / "Qcar2_TrajGen"
MK1_GENERATED_FOLDER = "generated_qcar2_flatness_bezier_Mk1"
AUTO_GENERATE_IF_MISSING = True


def import_mk1_generator():
    """Import qcar2_flat_bezier_Mk1 from Qcar2_TrajGen or this script folder."""
    search_dirs = [TRAJGEN_DIR, SCRIPT_DIR]

    for folder in search_dirs:
        mk1_file = folder / "qcar2_flat_bezier_Mk1.py"
        if mk1_file.exists():
            if str(folder) not in sys.path:
                sys.path.insert(0, str(folder))
            import qcar2_flat_bezier_Mk1 as mk1_generator
            return mk1_generator, folder

    raise ImportError(
        "Cannot find qcar2_flat_bezier_Mk1.py.\n"
        f"Expected it in:\n  {TRAJGEN_DIR}\n  {SCRIPT_DIR}"
    )


MK1_GENERATOR, MK1_DIR = import_mk1_generator()
GENERATED_DIR = Path(
    getattr(
        MK1_GENERATOR,
        "OUTPUT_DIR",
        getattr(MK1_GENERATOR, "DEFAULT_OUTPUT_DIR", MK1_DIR / MK1_GENERATED_FOLDER),
    )
)

# =============================================================================
# QLabs and visualization settings
# =============================================================================
QLABS_HOST = "localhost"
WAIT_FOR_ENTER_BEFORE_TRACKING = True
HOLD_SCRIPT_OPEN_AFTER_RUN = True
DESTROY_EXISTING_ACTORS = True

CAR_ID = 5
CAR_Z = 0.1
CAR_SCALE = [0.1, 0.1, 0.1]
LED_COLOR = [0, 1, 1]

DRAW_TRAJECTORY = True
DRAW_WAYPOINTS = True
TRAJECTORY_AS_LINE = True
TRAJECTORY_SEGMENT_STRIDE = 2
TRAJECTORY_DOT_STRIDE = 1
TRAJECTORY_LINE_WIDTH = 0.012
TRAJECTORY_LINE_HEIGHT = 0.002
START_CLEAR_RADIUS = 0.20
MARKER_Z = 0.012

MARKERS = {
    "trajectory": {
        "scale": [0.015, 0.015, 0.0001],
        "color": [1, 0, 0],
    },
    "waypoint": {
        "scale": [0.045, 0.045, 0.0001],
        "color": [0, 0.25, 1],
    },
}

# =============================================================================
# Mk1 CSV files
# =============================================================================
OUTPUT_DIR = GENERATED_DIR
TRAJECTORY_CSV = OUTPUT_DIR / "qcar2_single_track_flatness_bezier5_Mk1.csv"
WAYPOINT_CSV = OUTPUT_DIR / "computed_waypoints_full.csv"
SEGMENT_TIME_CSV = OUTPUT_DIR / "computed_segment_times.csv"
WAYPOINT_COLUMNS = ["X", "Y", "psi", "vx", "delta", "ax"]

# =============================================================================
# NLMPC settings copied from the ROS2 Mk1 controller that ran on the real QCar2
# =============================================================================
LWB = 0.25725
CONTROL_PERIOD = 0.02
MPC_N = 10
VX_MIN = -1.0
VX_MAX = 1.0
DELTA_MIN = -0.4
DELTA_MAX = 0.4
AX_MIN = -0.3
AX_MAX = 0.3

Q = np.diag([40.0, 40.0, 4.0, 1.0])
R = np.diag([0.8, 0.5])
QE = np.diag([120.0, 120.0, 12.0, 5.0])

GOAL_POSITION_TOLERANCE = 0.05
STOP_ON_SOLVER_FAILURE = True
MAX_CONSECUTIVE_FAILURES = 5

# QLabs API convention says positive turn turns right. The single-track model uses
# positive delta as positive yaw-rate. If the car turns away from the red path,
# change this value from -1.0 to +1.0.
QLABS_STEERING_SIGN = -1.0

# Use 1.0 when the Mk1 trajectory coordinates are already in the same QLabs world
# units. If you intentionally use physical QCar coordinates and a full-scale QLabs
# vehicle, set the two scale factors to 10.0.
QLABS_SPEED_SCALE = 1.0

# Log folder
LOG_DIR = OUTPUT_DIR / "qcar2_mk3_nlmpc_logs"
SAVE_RUN_LOG = True
SAVE_RESULT_PLOTS = True

EPS = 1e-9


@dataclass
class VehicleState:
    x: float
    y: float
    psi: float
    vx: float


@dataclass
class SolverResult:
    success: bool
    delta: float = 0.0
    ax: float = 0.0
    status: str = ""
    solve_time: float = 0.0


# =============================================================================
# Small math helpers
# =============================================================================

def clip(value: float, lower: float, upper: float) -> float:
    return float(np.clip(value, lower, upper))


def wrap_to_pi(angle: float) -> float:
    return float((angle + math.pi) % (2.0 * math.pi) - math.pi)


def unwrap_to_reference(angle: float, reference_angle: float) -> float:
    unwrapped = float(angle)
    while unwrapped - reference_angle > math.pi:
        unwrapped -= 2.0 * math.pi
    while unwrapped - reference_angle < -math.pi:
        unwrapped += 2.0 * math.pi
    return unwrapped


def sleep_until(target_time: float) -> None:
    remaining = target_time - time.perf_counter()
    if remaining > 0.0:
        time.sleep(remaining)


# =============================================================================
# Reference loading / generation
# =============================================================================

def ensure_reference_files() -> None:
    """Generate Mk1 CSV files automatically if they are missing."""
    required_files = [TRAJECTORY_CSV, WAYPOINT_CSV]
    missing_files = [path for path in required_files if not path.exists()]

    if not missing_files:
        return

    if not AUTO_GENERATE_IF_MISSING:
        missing_list = "\n".join(f"  {path}" for path in missing_files)
        raise FileNotFoundError(
            "Missing Mk1 reference files:\n"
            f"{missing_list}\n"
            "Run Qcar2_TrajGen/qcar2_flat_bezier_Mk1.py first."
        )

    generate_trajectory = getattr(MK1_GENERATOR, "generate_trajectory", None)
    if generate_trajectory is None:
        missing_list = "\n".join(f"  {path}" for path in missing_files)
        raise FileNotFoundError(
            "Missing Mk1 reference files and generate_trajectory() was not found:\n"
            f"{missing_list}\n"
            "Run Qcar2_TrajGen/qcar2_flat_bezier_Mk1.py first."
        )

    print("Mk1 reference files not found. Generating them now...")
    generate_trajectory(output_dir=OUTPUT_DIR, generate_plots=True)

    still_missing = [path for path in required_files if not path.exists()]
    if still_missing:
        missing_list = "\n".join(f"  {path}" for path in still_missing)
        raise FileNotFoundError(
            "Mk1 generation finished, but these files are still missing:\n"
            f"{missing_list}"
        )


def load_csv(path: Path) -> np.ndarray:
    if not path.exists():
        raise FileNotFoundError(
            f"Missing file: {path}\n"
            "Run Qcar2_TrajGen/qcar2_flat_bezier_Mk1.py first."
        )
    return np.atleast_1d(np.genfromtxt(path, delimiter=",", names=True))


def load_reference() -> tuple[dict[str, np.ndarray], np.ndarray, np.ndarray]:
    ensure_reference_files()

    traj_table = load_csv(TRAJECTORY_CSV)
    waypoint_table = load_csv(WAYPOINT_CSV)

    traj = {name: np.asarray(traj_table[name], dtype=float) for name in traj_table.dtype.names}

    traj["x"] = traj["X"]
    traj["y"] = traj["Y"]
    traj["theta"] = traj["psi"]
    traj["v"] = traj["vx"]

    waypoints = np.column_stack(
        [np.asarray(waypoint_table[col], dtype=float) for col in WAYPOINT_COLUMNS]
    )

    if SEGMENT_TIME_CSV.exists():
        segments = np.asarray(load_csv(SEGMENT_TIME_CSV)["T"], dtype=float)
    else:
        segments = np.array([], dtype=float)

    return traj, waypoints, segments


def reference_dt(traj: dict[str, np.ndarray]) -> float:
    if len(traj["t"]) < 2:
        return CONTROL_PERIOD
    dt = float(np.median(np.diff(traj["t"])))
    if not np.isfinite(dt) or dt <= 0.0:
        return CONTROL_PERIOD
    return dt


def build_reference_horizon(
    traj: dict[str, np.ndarray],
    start_index: int,
    horizon_steps: int,
) -> tuple[np.ndarray, np.ndarray]:
    num_samples = len(traj["t"])
    xref = np.zeros((4, horizon_steps + 1), dtype=float)
    uref = np.zeros((2, horizon_steps), dtype=float)

    for offset in range(horizon_steps + 1):
        index = min(start_index + offset, num_samples - 1)
        xref[:, offset] = [
            traj["X"][index],
            traj["Y"][index],
            traj["psi"][index],
            traj["vx"][index],
        ]

    for offset in range(horizon_steps):
        index = min(start_index + offset, num_samples - 1)
        uref[:, offset] = [traj["delta"][index], traj["ax"][index]]

    return xref, uref


# =============================================================================
# QLabs visualization and QCar actor helpers
# =============================================================================

def is_near_start(x: float, y: float, traj: dict[str, np.ndarray]) -> bool:
    return np.hypot(x - traj["x"][0], y - traj["y"][0]) < START_CLEAR_RADIUS


def spawn_marker(qlabs: QuanserInteractiveLabs, x: float, y: float, marker_type: str) -> None:
    marker = QLabsBasicShape(qlabs)
    marker.spawn(
        location=[float(x), float(y), MARKER_Z],
        scale=MARKERS[marker_type]["scale"],
        configuration=marker.SHAPE_CYLINDER,
    )
    marker.set_material_properties(color=MARKERS[marker_type]["color"])


def draw_points(
    qlabs: QuanserInteractiveLabs,
    points: np.ndarray,
    traj: dict[str, np.ndarray],
    marker_type: str,
    stride: int = 1,
) -> None:
    indices = range(0, len(points), max(1, stride))
    for i in indices:
        x, y = map(float, points[i][:2])
        if not is_near_start(x, y, traj):
            spawn_marker(qlabs, x, y, marker_type)


def spawn_line_segment(
    qlabs: QuanserInteractiveLabs,
    p0: np.ndarray,
    p1: np.ndarray,
    marker_type: str = "trajectory",
) -> None:
    x0, y0 = map(float, p0[:2])
    x1, y1 = map(float, p1[:2])

    if not np.all(np.isfinite([x0, y0, x1, y1])):
        return

    dx = x1 - x0
    dy = y1 - y0
    length = float(np.hypot(dx, dy))
    if length < 1e-4:
        return

    marker = QLabsBasicShape(qlabs)
    marker.spawn(
        location=[(x0 + x1) / 2.0, (y0 + y1) / 2.0, MARKER_Z],
        rotation=[0.0, 0.0, float(np.arctan2(dy, dx))],
        scale=[length, TRAJECTORY_LINE_WIDTH, TRAJECTORY_LINE_HEIGHT],
        configuration=marker.SHAPE_CUBE,
    )
    marker.set_material_properties(color=MARKERS[marker_type]["color"])


def draw_polyline(
    qlabs: QuanserInteractiveLabs,
    points: np.ndarray,
    traj: dict[str, np.ndarray],
    marker_type: str = "trajectory",
    stride: int = 1,
) -> None:
    points = np.asarray(points, dtype=float)
    step = max(1, int(stride))

    for i in range(0, len(points) - step, step):
        p0 = points[i]
        p1 = points[i + step]
        mid_x = float((p0[0] + p1[0]) / 2.0)
        mid_y = float((p0[1] + p1[1]) / 2.0)
        if not is_near_start(mid_x, mid_y, traj):
            spawn_line_segment(qlabs, p0, p1, marker_type)


def spawn_qcar2(qlabs: QuanserInteractiveLabs, traj: dict[str, np.ndarray]) -> QLabsQCar2:
    qcar2 = QLabsQCar2(qlabs)
    qcar2.spawn_id(
        actorNumber=CAR_ID,
        location=[float(traj["x"][0]), float(traj["y"][0]), CAR_Z],
        rotation=[0.0, 0.0, float(traj["theta"][0])],
        scale=CAR_SCALE,
        waitForConfirmation=True,
    )
    qcar2.possess(qcar2.CAMERA_TRAILING)
    qcar2.set_led_strip_uniform(color=LED_COLOR)
    return qcar2


def read_qcar_transform(qcar2: QLabsQCar2) -> tuple[bool, list[float], list[float]]:
    success, location, rotation, _scale = qcar2.get_world_transform()
    return bool(success), location, rotation


def send_qcar_command(
    qcar2: QLabsQCar2,
    vx_command: float,
    delta_command: float,
) -> tuple[bool, list[float], list[float], bool, bool]:
    forward = float(QLABS_SPEED_SCALE * vx_command)
    turn = float(QLABS_STEERING_SIGN * delta_command)

    headlights = True
    left_turn_signal = delta_command > 0.12
    right_turn_signal = delta_command < -0.12
    brake_signal = abs(vx_command) < 0.02
    reverse_signal = vx_command < -0.02

    return qcar2.set_velocity_and_request_state(
        forward,
        turn,
        headlights,
        left_turn_signal,
        right_turn_signal,
        brake_signal,
        reverse_signal,
    )


def stop_qcar(qcar2: QLabsQCar2) -> None:
    try:
        qcar2.set_velocity_and_request_state(0.0, 0.0, True, False, False, True, False)
    except Exception as exc:  # pragma: no cover - defensive shutdown for QLabs communication
        print(f"Warning: failed to send zero command: {exc}")


# =============================================================================
# State observer using QLabs transform + filtered finite-difference velocity
# =============================================================================

class QLabsStateObserver:
    def __init__(self, initial_vx: float = 0.0):
        self.prev_location_xy: np.ndarray | None = None
        self.prev_time: float | None = None
        self.vx_filtered = float(initial_vx)

    def read(self, qcar2: QLabsQCar2) -> tuple[bool, VehicleState]:
        success, location, rotation = read_qcar_transform(qcar2)
        if not success:
            return False, VehicleState(0.0, 0.0, 0.0, self.vx_filtered)

        now = time.perf_counter()
        location_xy = np.asarray(location[:2], dtype=float)
        psi = float(rotation[2])

        if self.prev_location_xy is not None and self.prev_time is not None:
            dt = now - self.prev_time
            if dt > 1e-4:
                v_global = (location_xy - self.prev_location_xy) / dt
                heading = np.array([math.cos(psi), math.sin(psi)], dtype=float)
                vx_measured = float(np.dot(v_global, heading))
                if np.isfinite(vx_measured):
                    self.vx_filtered = 0.75 * self.vx_filtered + 0.25 * vx_measured

        self.prev_location_xy = location_xy
        self.prev_time = now

        state = VehicleState(
            x=float(location[0]),
            y=float(location[1]),
            psi=psi,
            vx=clip(self.vx_filtered, VX_MIN, VX_MAX),
        )
        return True, state


# =============================================================================
# CasADi NLMPC solver
# =============================================================================

class CasadiSingleTrackNLMPC:
    def __init__(
        self,
        wheelbase: float,
        sample_time: float,
        horizon_steps: int,
    ):
        self.L = float(wheelbase)
        self.Ts = float(sample_time)
        self.N = int(horizon_steps)
        self.nx = 4
        self.nu = 2
        self._last_solution: np.ndarray | None = None
        self._build_solver()

    def _dynamics(self, x: ca.MX, u: ca.MX) -> ca.MX:
        X, Y, psi, vx = x[0], x[1], x[2], x[3]
        delta, ax = u[0], u[1]
        return ca.vertcat(
            vx * ca.cos(psi),
            vx * ca.sin(psi),
            (vx / self.L) * ca.tan(delta),
            ax,
        )

    def _rk4_step(self, x: ca.MX, u: ca.MX) -> ca.MX:
        h = self.Ts
        k1 = self._dynamics(x, u)
        k2 = self._dynamics(x + 0.5 * h * k1, u)
        k3 = self._dynamics(x + 0.5 * h * k2, u)
        k4 = self._dynamics(x + h * k3, u)
        return x + (h / 6.0) * (k1 + 2.0 * k2 + 2.0 * k3 + k4)

    def _build_solver(self) -> None:
        X = ca.MX.sym("X", self.nx, self.N + 1)
        U = ca.MX.sym("U", self.nu, self.N)

        num_parameters = self.nx + self.nx * (self.N + 1) + self.nu * self.N
        P = ca.MX.sym("P", num_parameters)

        p_offset = 0
        x0_p = P[p_offset : p_offset + self.nx]
        p_offset += self.nx
        xref_p = ca.reshape(P[p_offset : p_offset + self.nx * (self.N + 1)], self.nx, self.N + 1)
        p_offset += self.nx * (self.N + 1)
        uref_p = ca.reshape(P[p_offset : p_offset + self.nu * self.N], self.nu, self.N)

        Q_ca = ca.DM(Q)
        R_ca = ca.DM(R)
        QE_ca = ca.DM(QE)

        objective = 0
        constraints = [X[:, 0] - x0_p]

        for k in range(self.N):
            x_error = X[:, k] - xref_p[:, k]
            u_error = U[:, k] - uref_p[:, k]
            objective += ca.mtimes([x_error.T, Q_ca, x_error])
            objective += ca.mtimes([u_error.T, R_ca, u_error])
            constraints.append(X[:, k + 1] - self._rk4_step(X[:, k], U[:, k]))

        terminal_error = X[:, self.N] - xref_p[:, self.N]
        objective += ca.mtimes([terminal_error.T, QE_ca, terminal_error])

        w = ca.vertcat(ca.reshape(X, self.nx * (self.N + 1), 1), ca.reshape(U, self.nu * self.N, 1))
        g = ca.vertcat(*constraints)

        nlp = {"x": w, "f": objective, "g": g, "p": P}
        options = {
            "ipopt.print_level": 0,
            "ipopt.sb": "yes",
            "ipopt.max_iter": 60,
            "ipopt.tol": 1e-4,
            "ipopt.acceptable_tol": 1e-3,
            "print_time": False,
        }
        self._solver = ca.nlpsol("qcar2_mk3_nlmpc", "ipopt", nlp, options)

        self._lbg = np.zeros(self.nx * (self.N + 1), dtype=float)
        self._ubg = np.zeros(self.nx * (self.N + 1), dtype=float)
        self._lbx, self._ubx = self._build_bounds()

    def _build_bounds(self) -> tuple[np.ndarray, np.ndarray]:
        num_vars = self.nx * (self.N + 1) + self.nu * self.N
        lbx = -np.inf * np.ones(num_vars, dtype=float)
        ubx = np.inf * np.ones(num_vars, dtype=float)

        # State bounds: only vx is constrained, same as the ROS2 Mk1 acados solver.
        for k in range(self.N + 1):
            vx_index = k * self.nx + 3
            lbx[vx_index] = VX_MIN
            ubx[vx_index] = VX_MAX

        # Input bounds.
        u_start = self.nx * (self.N + 1)
        for k in range(self.N):
            delta_index = u_start + k * self.nu
            ax_index = delta_index + 1
            lbx[delta_index] = DELTA_MIN
            ubx[delta_index] = DELTA_MAX
            lbx[ax_index] = AX_MIN
            ubx[ax_index] = AX_MAX

        return lbx, ubx

    def _initial_guess(self, xref: np.ndarray, uref: np.ndarray) -> np.ndarray:
        if self._last_solution is not None and self._last_solution.size == self._lbx.size:
            return self._last_solution
        return np.concatenate(
            [
                xref.reshape(-1, order="F"),
                uref.reshape(-1, order="F"),
            ]
        )

    def solve(self, current_state: np.ndarray, xref: np.ndarray, uref: np.ndarray) -> SolverResult:
        tic = time.perf_counter()
        current_state = np.asarray(current_state, dtype=float).copy()
        current_state[3] = clip(current_state[3], VX_MIN, VX_MAX)

        p = np.concatenate(
            [
                current_state,
                xref.reshape(-1, order="F"),
                uref.reshape(-1, order="F"),
            ]
        )

        try:
            solution = self._solver(
                x0=self._initial_guess(xref, uref),
                lbx=self._lbx,
                ubx=self._ubx,
                lbg=self._lbg,
                ubg=self._ubg,
                p=p,
            )
            w_opt = np.asarray(solution["x"], dtype=float).reshape(-1)
            self._last_solution = w_opt

            stats = self._solver.stats()
            success = bool(stats.get("success", False))
            return_status = str(stats.get("return_status", "unknown"))

            u_start = self.nx * (self.N + 1)
            delta = clip(w_opt[u_start], DELTA_MIN, DELTA_MAX)
            ax = clip(w_opt[u_start + 1], AX_MIN, AX_MAX)

            return SolverResult(
                success=success,
                delta=delta,
                ax=ax,
                status=return_status,
                solve_time=time.perf_counter() - tic,
            )
        except Exception as exc:
            return SolverResult(
                success=False,
                delta=0.0,
                ax=0.0,
                status=f"exception: {exc}",
                solve_time=time.perf_counter() - tic,
            )


# =============================================================================
# Logging / plotting
# =============================================================================

def create_log_path() -> Path:
    LOG_DIR.mkdir(parents=True, exist_ok=True)
    stamp = datetime.now().strftime("%Y%m%d_%H%M%S")
    return LOG_DIR / f"qcar2_mk3_nlmpc_run_{stamp}.csv"


def save_log_csv(log_rows: list[dict[str, Any]], log_path: Path) -> None:
    if not log_rows:
        print("No log rows to save.")
        return

    fieldnames = list(log_rows[0].keys())
    with log_path.open("w", newline="", encoding="utf-8") as file:
        writer = csv.DictWriter(file, fieldnames=fieldnames)
        writer.writeheader()
        writer.writerows(log_rows)

    print(f"Saved Mk3 NLMPC log: {log_path}")


def save_log_plots(log_path: Path) -> None:
    if not SAVE_RESULT_PLOTS or not log_path.exists():
        return

    try:
        import matplotlib.pyplot as plt
    except ModuleNotFoundError:
        print("matplotlib is not installed; skipping result plots.")
        return

    data = np.genfromtxt(log_path, delimiter=",", names=True)
    if data.size == 0:
        return
    data = np.atleast_1d(data)

    def plot_series(filename: str, y_keys: list[str], labels: list[str], ylabel: str, title: str) -> None:
        plt.figure()
        for key, label in zip(y_keys, labels):
            plt.plot(data["t"], data[key], label=label)
        plt.xlabel("t [s]")
        plt.ylabel(ylabel)
        plt.title(title)
        plt.grid(True)
        plt.legend()
        plt.tight_layout()
        plt.savefig(log_path.with_name(filename), dpi=180)
        plt.close()

    plt.figure()
    plt.plot(data["ref_x"], data["ref_y"], label="reference")
    plt.plot(data["x"], data["y"], label="actual")
    plt.axis("equal")
    plt.xlabel("X [m]")
    plt.ylabel("Y [m]")
    plt.title("QCar2 Mk3 NLMPC path tracking")
    plt.grid(True)
    plt.legend()
    plt.tight_layout()
    plt.savefig(log_path.with_name("qcar2_mk3_path_tracking.png"), dpi=180)
    plt.close()

    plot_series(
        "qcar2_mk3_state_errors.png",
        ["e_x", "e_y", "e_psi", "e_vx"],
        ["e_X", "e_Y", "e_psi", "e_vx"],
        "error",
        "State tracking errors",
    )
    plot_series(
        "qcar2_mk3_controls.png",
        ["delta_cmd", "delta_ref", "ax_cmd", "ax_ref"],
        ["delta_cmd", "delta_ref", "ax_cmd", "ax_ref"],
        "control",
        "Control command and reference",
    )
    print(f"Saved Mk3 NLMPC plots next to: {log_path}")


# =============================================================================
# Tracking loop
# =============================================================================

def print_summary(traj: dict[str, np.ndarray], waypoints: np.ndarray, segments: np.ndarray) -> None:
    print("Loaded Mk1 Bezier reference")
    print(f"  Mk1 file  : {Path(MK1_GENERATOR.__file__).resolve()}")
    print(f"  Folder    : {OUTPUT_DIR}")
    print(f"  Samples   : {len(traj['x'])}")
    print(f"  Waypoints : {len(waypoints)}")
    print(f"  Segments  : {len(segments)}")
    print(f"  Time      : {traj['t'][-1]:.3f} s")
    print(f"  Ts        : {reference_dt(traj):.4f} s")
    print(f"  Start     : x={traj['x'][0]:.3f}, y={traj['y'][0]:.3f}, yaw={traj['theta'][0]:.3f}")
    print(f"  End       : x={traj['x'][-1]:.3f}, y={traj['y'][-1]:.3f}, yaw={traj['theta'][-1]:.3f}")
    print("NLMPC settings")
    print(f"  N={MPC_N}, Ts={CONTROL_PERIOD:.3f}, vx=[{VX_MIN},{VX_MAX}], delta=[{DELTA_MIN},{DELTA_MAX}], ax=[{AX_MIN},{AX_MAX}]")
    print(f"  QLabs steering sign={QLABS_STEERING_SIGN:+.1f}, speed scale={QLABS_SPEED_SCALE:.1f}")


def track_reference(qcar2: QLabsQCar2, traj: dict[str, np.ndarray]) -> Path | None:
    dt = reference_dt(traj)
    solver = CasadiSingleTrackNLMPC(LWB, dt, MPC_N)
    observer = QLabsStateObserver(initial_vx=float(traj["vx"][0]))

    log_rows: list[dict[str, Any]] = []
    log_path = create_log_path() if SAVE_RUN_LOG else None

    tracking_start = time.perf_counter()
    next_tick = tracking_start
    vx_command = clip(float(traj["vx"][0]), VX_MIN, VX_MAX)
    consecutive_failures = 0

    print("Mk3 NLMPC tracking started. Press Ctrl+C to stop safely.")

    try:
        while True:
            now = time.perf_counter()
            elapsed_time = now - tracking_start
            reference_index = int(round(elapsed_time / dt))

            if reference_index >= len(traj["t"]) - 1:
                print("End of Mk1 reference reached.")
                break

            xref, uref = build_reference_horizon(traj, reference_index, MPC_N)

            state_ok, measured_state = observer.read(qcar2)
            if not state_ok:
                print("QLabs state read failed. Sending zero command.")
                stop_qcar(qcar2)
                if STOP_ON_SOLVER_FAILURE:
                    break
                sleep_until(next_tick + dt)
                next_tick += dt
                continue

            distance_to_goal = float(np.hypot(measured_state.x - traj["X"][-1], measured_state.y - traj["Y"][-1]))
            if distance_to_goal <= GOAL_POSITION_TOLERANCE:
                print(f"Goal tolerance reached: {distance_to_goal:.3f} m.")
                break

            current_psi_unwrapped = unwrap_to_reference(measured_state.psi, xref[2, 0])
            current_state = np.array(
                [measured_state.x, measured_state.y, current_psi_unwrapped, measured_state.vx],
                dtype=float,
            )

            solver_result = solver.solve(current_state, xref, uref)

            if solver_result.success:
                consecutive_failures = 0
                delta_command = clip(solver_result.delta, DELTA_MIN, DELTA_MAX)
                ax_command = clip(solver_result.ax, AX_MIN, AX_MAX)
                vx_command = clip(vx_command + ax_command * dt, VX_MIN, VX_MAX)
            else:
                consecutive_failures += 1
                print(
                    f"Solver failed ({consecutive_failures}/{MAX_CONSECUTIVE_FAILURES}): "
                    f"{solver_result.status}"
                )
                delta_command = 0.0
                ax_command = 0.0
                vx_command = 0.0
                if STOP_ON_SOLVER_FAILURE and consecutive_failures >= MAX_CONSECUTIVE_FAILURES:
                    break

            qlabs_success, qlabs_location, qlabs_rotation, front_hit, rear_hit = send_qcar_command(
                qcar2,
                vx_command,
                delta_command,
            )

            ref_sample_index = min(reference_index, len(traj["t"]) - 1)
            ref_x = float(traj["X"][ref_sample_index])
            ref_y = float(traj["Y"][ref_sample_index])
            ref_psi = float(traj["psi"][ref_sample_index])
            ref_vx = float(traj["vx"][ref_sample_index])
            ref_delta = float(traj["delta"][ref_sample_index])
            ref_ax = float(traj["ax"][ref_sample_index])

            e_x = measured_state.x - ref_x
            e_y = measured_state.y - ref_y
            e_psi = wrap_to_pi(measured_state.psi - ref_psi)
            e_vx = measured_state.vx - ref_vx

            log_rows.append(
                {
                    "t": elapsed_time,
                    "ref_index": reference_index,
                    "x": measured_state.x,
                    "y": measured_state.y,
                    "psi": measured_state.psi,
                    "vx": measured_state.vx,
                    "ref_x": ref_x,
                    "ref_y": ref_y,
                    "ref_psi": ref_psi,
                    "ref_vx": ref_vx,
                    "delta_cmd": delta_command,
                    "ax_cmd": ax_command,
                    "vx_cmd": vx_command,
                    "delta_ref": ref_delta,
                    "ax_ref": ref_ax,
                    "e_x": e_x,
                    "e_y": e_y,
                    "e_psi": e_psi,
                    "e_vx": e_vx,
                    "solve_time": solver_result.solve_time,
                    "solver_success": int(solver_result.success),
                    "qlabs_success": int(qlabs_success),
                    "front_hit": int(front_hit),
                    "rear_hit": int(rear_hit),
                    "qlabs_x": qlabs_location[0] if qlabs_success else np.nan,
                    "qlabs_y": qlabs_location[1] if qlabs_success else np.nan,
                    "qlabs_psi": qlabs_rotation[2] if qlabs_success else np.nan,
                    "solver_status": solver_result.status,
                }
            )

            if reference_index % max(1, int(1.0 / dt)) == 0:
                print(
                    f"t={elapsed_time:6.2f}s  "
                    f"e_xy={math.hypot(e_x, e_y):.3f}m  "
                    f"e_psi={e_psi:+.3f}rad  "
                    f"vx_cmd={vx_command:+.3f}  "
                    f"delta={delta_command:+.3f}  "
                    f"solve={1000.0 * solver_result.solve_time:.1f}ms"
                )

            next_tick += dt
            sleep_until(next_tick)

    except KeyboardInterrupt:
        print("Tracking interrupted by user.")
    finally:
        stop_qcar(qcar2)

    if SAVE_RUN_LOG and log_path is not None:
        save_log_csv(log_rows, log_path)
        save_log_plots(log_path)
        return log_path

    return None


# =============================================================================
# Main
# =============================================================================

def main() -> None:
    traj, waypoints, segments = load_reference()
    path_ref = np.column_stack((traj["x"], traj["y"]))
    print_summary(traj, waypoints, segments)

    qlabs = QuanserInteractiveLabs()
    if not qlabs.open(QLABS_HOST):
        print("Unable to connect to QLabs. Open Quanser Interactive Labs first.")
        sys.exit(1)

    log_path: Path | None = None
    try:
        if DESTROY_EXISTING_ACTORS:
            qlabs.destroy_all_spawned_actors()
            time.sleep(0.5)

        qcar2 = spawn_qcar2(qlabs, traj)

        if DRAW_TRAJECTORY:
            if TRAJECTORY_AS_LINE:
                draw_polyline(qlabs, path_ref, traj, "trajectory", TRAJECTORY_SEGMENT_STRIDE)
            else:
                draw_points(qlabs, path_ref, traj, "trajectory", TRAJECTORY_DOT_STRIDE)
        if DRAW_WAYPOINTS:
            draw_points(qlabs, waypoints, traj, "waypoint")

        print("Visualization ready: red = Mk1 trajectory, blue = Mk1 waypoints.")
        if WAIT_FOR_ENTER_BEFORE_TRACKING:
            input("Press Enter to start Mk3 NLMPC tracking...")

        log_path = track_reference(qcar2, traj)

        if log_path is not None:
            print(f"Run complete. Log saved at: {log_path}")

        if HOLD_SCRIPT_OPEN_AFTER_RUN:
            input("Press Enter to close QLabs connection...")
    finally:
        qlabs.close()


if __name__ == "__main__":
    main()
