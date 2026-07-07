"""Quanser Interactive Labs interface helpers for QCar2 Mk2 OAMPC tracking."""

from __future__ import annotations

import math
import sys
import time
from pathlib import Path
from typing import Any

import numpy as np

_QVL_MODULES: dict[str, Any] = {}


# Add the configured Quanser Python folder to sys.path.
def add_quanser_python_path(config: dict[str, Any]) -> None:
    quanser_dir = Path(config["_resolved_paths"]["quanser_python_dir"])
    if quanser_dir.exists() and str(quanser_dir) not in sys.path:
        sys.path.insert(0, str(quanser_dir))


# Import QLabs Python classes after the Quanser path has been added.
def import_quanser_modules(config: dict[str, Any]) -> dict[str, Any]:
    if _QVL_MODULES:
        return _QVL_MODULES

    add_quanser_python_path(config)
    try:
        from qvl.qcar2 import QLabsQCar2
        from qvl.qlabs import QuanserInteractiveLabs
        from qvl.spline_line import QLabsSplineLine
        from qvl.basic_shape import QLabsBasicShape
    except ModuleNotFoundError as exc:
        raise ModuleNotFoundError("Cannot import Quanser qvl modules.") from exc

    _QVL_MODULES.update(
        {
            "QLabsQCar2": QLabsQCar2,
            "QuanserInteractiveLabs": QuanserInteractiveLabs,
            "QLabsSplineLine": QLabsSplineLine,
            "QLabsBasicShape": QLabsBasicShape,
        }
    )
    return _QVL_MODULES


# Open a connection to Quanser Interactive Labs.
def connect_to_qlabs(config: dict[str, Any]) -> Any:
    modules = import_quanser_modules(config)
    host = str(config["qlabs"]["host"])
    qlabs = modules["QuanserInteractiveLabs"]()
    if not qlabs.open(host):
        raise ConnectionError("Cannot connect to QLabs.")
    return qlabs


# Spawn the QCar2 actor using the pose configured in YAML.
def spawn_qcar2(qlabs: Any, config: dict[str, Any]) -> Any:
    modules = import_quanser_modules(config)
    qcar_config = config["qlabs"]["qcar"]
    spawn_config = qcar_config["spawn"]

    qcar2 = modules["QLabsQCar2"](qlabs)
    qcar2.spawn_id(
        actorNumber=int(qcar_config["actor_id"]),
        location=[float(spawn_config["x"]), float(spawn_config["y"]), float(spawn_config["z"]),],
        rotation=[0.0, 0.0, float(spawn_config["yaw"])],
        scale=list(spawn_config["scale"]),
        waitForConfirmation=True,
    )
    try:
        qcar2.possess(qcar2.CAMERA_TRAILING)
    except Exception:
        pass
    return qcar2


# Return the QLabs BasicShape configuration integer for an obstacle type name.
def basic_shape_configuration(modules: dict[str, Any], obstacle_type: str) -> int:
    basic_shape_class = modules["QLabsBasicShape"]
    type_map = {
        "cube": basic_shape_class.SHAPE_CUBE,
        "cone": basic_shape_class.SHAPE_CONE,
        "cylinder": basic_shape_class.SHAPE_CYLINDER,
        "sphere": basic_shape_class.SHAPE_SPHERE,
    }
    normalized_type = str(obstacle_type).lower()
    if normalized_type not in type_map:
        print(f"Warning: unsupported obstacle type '{normalized_type}', spawning a cube instead.")
    return int(type_map.get(normalized_type, basic_shape_class.SHAPE_CUBE))


# Spawn all configured obstacle BasicShape actors in QLabs.
def spawn_obstacles_from_config(qlabs: Any, config: dict[str, Any]) -> list[Any]:
    modules = import_quanser_modules(config)
    obstacle_config = config["obstacle_avoidance"]
    raw_obstacles = obstacle_config["obstacles"] or []
    if not raw_obstacles:
        return []

    spawned_shapes: list[Any] = []
    for obstacle_id, obstacle in enumerate(raw_obstacles):
        shape = modules["QLabsBasicShape"](qlabs)
        configuration = basic_shape_configuration(modules, str(obstacle.get("type", "cube")))
        success = shape.spawn(
            location=[float(value) for value in obstacle.get("loc", [0.0, 0.0, 0.0])],
            rotation=[float(value) for value in obstacle.get("rot", [0.0, 0.0, 0.0])],
            scale=[float(value) for value in obstacle.get("scale", [0.0, 0.0, 0.0])],
            configuration=configuration,
            waitForConfirmation=True,
        )
        if success:
            try:
                shape.set_material_properties(color=[float(value) for value in obstacle.get("color", [0.0, 1.0, 0.0])])
            except Exception:
                pass
            spawned_shapes.append(shape)
        else:
            print(f"Warning: failed to spawn obstacle {obstacle_id}.")
        time.sleep(0.05)
    return spawned_shapes


# Send signed velocity and steering commands to QCar2.
def send_qcar_command(qcar2: Any, vx_command: float, delta_command: float, config: dict[str, Any],) -> None:
    qcar_config = config["qlabs"]["qcar"]
    speed_scale = float(qcar_config["speed_scale"])
    steering_sign = float(qcar_config["steering_sign"])

    forward_command = speed_scale * float(vx_command)
    turn_command = steering_sign * float(delta_command)
    headlights = True
    left_turn_signal = delta_command > 0.12
    right_turn_signal = delta_command < -0.12
    brake_signal = abs(vx_command) < 0.02
    reverse_signal = vx_command < -0.02

    qcar2.set_velocity_and_request_state(
        forward_command,
        turn_command,
        headlights,
        left_turn_signal,
        right_turn_signal,
        brake_signal,
        reverse_signal,
    )


# Send a zero command to stop the vehicle safely.
def stop_qcar(qcar2: Any) -> None:
    try:
        qcar2.set_velocity_and_request_state(0.0, 0.0, True, False, False, True, False)
    except Exception:
        pass


# Draw the reference trajectory as one fast spline line actor.
def draw_reference_trajectory(qlabs: Any, xy_points: np.ndarray, config: dict[str, Any]) -> None:
    modules = import_quanser_modules(config)
    reference_config = config["visualization"]["reference"]
    stride = max(1, int(reference_config["stride"]))
    z_value = float(reference_config["z"])
    width = float(reference_config["width"])
    color = list(reference_config["color"])

    points = np.asarray(xy_points, dtype=float)[::stride]
    if len(points) < 2:
        return
    if np.linalg.norm(points[-1, :2] - xy_points[-1, :2]) > 1.0e-6:
        points = np.vstack((points, xy_points[-1]))

    point_list = [[float(x), float(y), z_value, width] for x, y in points]
    spline_line = modules["QLabsSplineLine"](qlabs)
    spline_line.spawn(location=[0.0, 0.0, 0.0], rotation=[0.0, 0.0, 0.0], scale=[1.0, 1.0, 1.0], configuration=spline_line.CURVE)
    spline_line.set_points(color=color, pointList=point_list, alignEndPointTangents=False, waitForConfirmation=True)


# Draw waypoint markers as small spline circles.
def draw_waypoint_markers(qlabs: Any, waypoints: np.ndarray, config: dict[str, Any]) -> None:
    modules = import_quanser_modules(config)
    waypoint_array = np.asarray(waypoints, dtype=float)
    if waypoint_array.size == 0:
        return

    waypoint_config = config["visualization"]["waypoints"]
    z_value = float(waypoint_config["z"])
    radius = float(waypoint_config["radius"])
    width = float(waypoint_config["width"])
    color = list(waypoint_config["color"])
    num_points = max(8, int(waypoint_config["stride"]))

    for waypoint in waypoint_array:
        marker = modules["QLabsSplineLine"](qlabs)
        marker.spawn(
            location=[float(waypoint[0]), float(waypoint[1]), z_value],
            rotation=[0.0, 0.0, 0.0],
            scale=[1.0, 1.0, 1.0],
            configuration=marker.CURVE,
            waitForConfirmation=True,
        )
        marker.circle_from_center(
            radius=radius,
            lineWidth=width,
            color=color,
            numSplinePoints=num_points,
            waitForConfirmation=True,
        )


# Estimate and filter the QCar2 state from QLabs transforms.
class QLabsStateReader:
    # Initialize the finite-difference velocity estimator.
    def __init__(self, config: dict[str, Any], initial_vx: float = 0.0):
        constraints = config["oampc"]["constraints"]
        self.vx_min = float(constraints["vx_min"])
        self.vx_max = float(constraints["vx_max"])
        self.previous_xy: np.ndarray | None = None
        self.previous_time: float | None = None
        self.vx_filtered = float(initial_vx)

    # Read [X, Y, psi, vx] from QLabs with filtered signed velocity.
    def read(self, qcar2: Any) -> tuple[bool, np.ndarray]:
        success, location, rotation, _scale = qcar2.get_world_transform()
        if not success:
            return False, np.array(
                [
                    0.0, 0.0, 0.0,
                    float(np.clip(self.vx_filtered, self.vx_min, self.vx_max)),
                ], dtype=float,
            )
        current_time = time.perf_counter()
        current_xy = np.asarray(location[:2], dtype=float)
        current_yaw = float(rotation[2])

        if self.previous_xy is not None and self.previous_time is not None:
            elapsed_time = current_time - self.previous_time
            if elapsed_time > 1.0e-4:
                global_velocity = (current_xy - self.previous_xy) / elapsed_time
                heading_vector = np.array([math.cos(current_yaw), math.sin(current_yaw)], dtype=float)
                vx_measured = float(np.dot(global_velocity, heading_vector))
                if np.isfinite(vx_measured):
                    self.vx_filtered = 0.75 * self.vx_filtered + 0.25 * vx_measured

        self.previous_xy = current_xy
        self.previous_time = current_time
        return True, np.array(
            [
                float(location[0]),
                float(location[1]),
                current_yaw,
                float(np.clip(self.vx_filtered, self.vx_min, self.vx_max)),
            ],
            dtype=float,
        )
