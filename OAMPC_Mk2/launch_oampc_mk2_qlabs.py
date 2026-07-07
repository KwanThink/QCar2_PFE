#!/usr/bin/env python3
"""Launch QCar2 Mk2 OAMPC obstacle-avoidance tracking in Quanser Interactive Labs."""

from __future__ import annotations

import time
from typing import Any

import numpy as np

from src.config_loader import load_config
from src.obstacle import build_obstacle_list
from src.qlabs_interface import (
    QLabsStateReader,
    connect_to_qlabs,
    draw_reference_trajectory,
    draw_waypoint_markers,
    send_qcar_command,
    spawn_obstacles_from_config,
    spawn_qcar2,
    stop_qcar,
)
from src.reference_manager import ReferenceManager
from src.result_logger import ResultLogger


WAIT_FOR_ENTER_BEFORE_TRACKING = True
HOLD_SCRIPT_OPEN_AFTER_RUN = True


# Sleep until a target perf_counter time is reached.
def sleep_until(target_time: float) -> None:
    remaining_time = target_time - time.perf_counter()
    if remaining_time > 0.0:
        time.sleep(remaining_time)


# Return the Euclidean position error against a reference state.
def position_error(current_state: np.ndarray, reference_state: np.ndarray) -> float:
    return float(np.hypot(current_state[0] - reference_state[0], current_state[1] - reference_state[1]))


# Check whether the vehicle is close enough to the final Cartesian reference point.
def goal_pose_reached(current_state: np.ndarray, goal_state: np.ndarray, config: dict[str, Any]) -> bool:
    tracking_config = config["tracking"]
    return position_error(current_state, goal_state) <= float(tracking_config["goal_position_tolerance"])


# Run progress-based reference tracking with always-on obstacle constraints.
def run_control_loop(
    qcar2: Any,
    reference_manager: ReferenceManager,
    config: dict[str, Any],
    logger: ResultLogger,
    obstacle_list: list[dict[str, Any]],
) -> None:
    from src.single_track_oampc import GurobiFlatCoordinateOAMPC, angle_error, unwrap_to_reference

    solver_config = config["oampc"]["solver"]
    constraints = config["oampc"]["constraints"]
    horizon_steps = int(config["oampc"]["N"])
    control_period = float(config["oampc"]["Ts"])
    vx_min = float(constraints["vx_min"])
    vx_max = float(constraints["vx_max"])

    vx_reference = float(np.clip(reference_manager.nominal_speed(), max(0.0, vx_min), vx_max))
    stop_on_failure = bool(solver_config["stop_on_failure"])
    max_consecutive_failures = int(solver_config["max_consecutive_failures"])

    state_reader = QLabsStateReader(config, initial_vx=0.0)
    solver = GurobiFlatCoordinateOAMPC(config)
    logger.start()

    final_reference_state = reference_manager.state_at(reference_manager.sample_count() - 1)
    run_start_time = time.perf_counter()
    next_tick = run_start_time
    velocity_command = 0.0
    consecutive_failures = 0
    finished = False

    try:
        while True:
            loop_time = time.perf_counter()
            run_elapsed_time = loop_time - run_start_time
            state_ok, measured_state = state_reader.read(qcar2)
            if not state_ok:
                print("State read failed.")
                break

            reference_state_horizon, reference_input_horizon, ref_index = reference_manager.build_progress_horizon(
                current_state=measured_state,
                horizon_steps=horizon_steps,
                sample_time=control_period,
                vx_reference=vx_reference,
            )
            measured_state[2] = unwrap_to_reference(measured_state[2], reference_state_horizon[2, 0])

            near_end_of_reference = ref_index >= reference_manager.sample_count() - horizon_steps - 1
            if near_end_of_reference and goal_pose_reached(measured_state, final_reference_state, config):
                finished = True
                break

            solver_result = solver.solve(
                measured_state,
                reference_state_horizon,
                reference_input_horizon,
                obstacle_list=obstacle_list,
            )

            if solver_result.success:
                consecutive_failures = 0
                delta_command = solver_result.delta
                ax_command = solver_result.ax
                v1_command = solver_result.v1
                v2_command = solver_result.v2
                velocity_command = float(np.clip(velocity_command + ax_command * control_period, vx_min, vx_max))
            else:
                consecutive_failures += 1
                print(f"Solver failed: {solver_result.status}")
                delta_command = 0.0
                ax_command = 0.0
                v1_command = 0.0
                v2_command = 0.0
                velocity_command = 0.0
                if stop_on_failure and consecutive_failures >= max_consecutive_failures:
                    break

            send_qcar_command(qcar2, velocity_command, delta_command, config)
            reference_state = reference_state_horizon[:, 0]
            reference_input = reference_input_horizon[:, 0]
            state_error = measured_state - reference_state
            state_error[2] = angle_error(measured_state[2], reference_state[2])

            logger.record(
                t=run_elapsed_time,
                ref_index=ref_index,
                state=measured_state,
                control=np.array([velocity_command, delta_command, ax_command], dtype=float),
                reference_state=reference_state,
                reference_input=reference_input,
                state_error=state_error,
                solver_success=solver_result.success,
                solver_status=solver_result.status,
                solve_time=solver_result.solve_time,
                virtual_input=np.array([v1_command, v2_command], dtype=float),
                slack_value=solver_result.slack_value,
                mip_gap=solver_result.mip_gap,
                number_of_config_obstacles=solver_result.number_of_config_obstacles,
                number_of_active_obstacles=solver_result.number_of_active_obstacles,
                number_of_active_edges=solver_result.number_of_active_edges,
                obstacle_list=obstacle_list,
                active_obstacle_ids=solver_result.active_obstacle_ids,
            )

            next_tick += control_period
            sleep_until(next_tick)
    except KeyboardInterrupt:
        print("Tracking interrupted.")
    finally:
        stop_qcar(qcar2)
        logger.save()
        if finished:
            print("Tracking finished.")


# Load files, connect to QLabs, draw references, spawn obstacles, and run the controller.
def main() -> None:
    try:
        config = load_config()
    except Exception as exc:
        print(str(exc))
        return

    try:
        reference_manager = ReferenceManager(config)
    except FileNotFoundError:
        print("Generated trajectory not found.")
        return

    try:
        import src.single_track_oampc  # noqa: F401
    except ModuleNotFoundError:
        print("Cannot import Gurobi. Install gurobipy and make sure a Gurobi license is available.")
        return

    qlabs = None
    try:
        # QLabs setup
        print("Connecting to QLabs...")
        qlabs = connect_to_qlabs(config)
        print("Connected to QLabs.")
        qlabs.destroy_all_spawned_actors()
        qcar2 = spawn_qcar2(qlabs, config)
        # Spawn the obstacles
        obstacle_list = build_obstacle_list(config)
        spawned_obstacles = spawn_obstacles_from_config(qlabs, config)
        if spawned_obstacles:
            print(f"Spawned {len(spawned_obstacles)} obstacle(s).")
        # Draw reference on QLabs
        draw_reference_trajectory(qlabs, reference_manager.xy_points(), config)
        draw_waypoint_markers(qlabs, reference_manager.waypoints, config)

        if WAIT_FOR_ENTER_BEFORE_TRACKING:
            input("Press Enter to start tracking...")

        logger = ResultLogger(config)
        run_control_loop(qcar2, reference_manager, config, logger, obstacle_list)

        if logger.run_folder is not None:
            print(f"Results saved: {logger.run_folder}")
        if HOLD_SCRIPT_OPEN_AFTER_RUN:
            input("Press Enter to close...")
    except Exception as exc:
        print(str(exc))
    finally:
        if qlabs is not None:
            try:
                qlabs.close()
            except Exception:
                pass


# Run the launch script as a standalone program.
if __name__ == "__main__":
    main()
