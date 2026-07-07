#!/usr/bin/env python3
"""Launch QCar2 Mk1 OAMPC tracking in Quanser Interactive Labs."""

from __future__ import annotations

import time
from typing import Any

import numpy as np

from src.config_loader import load_config
from src.qlabs_interface import (
    QLabsStateReader,
    connect_to_qlabs,
    draw_reference_trajectory,
    draw_waypoint_markers,
    send_qcar_command,
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


# Check whether the vehicle is close enough to the first Cartesian reference point.
def start_pose_reached(current_state: np.ndarray, start_state: np.ndarray, config: dict[str, Any]) -> bool:
    tracking_config = config["tracking"]
    return (
        position_error(current_state, start_state) <= float(tracking_config["start_position_tolerance"])
        and abs(float(current_state[3])) <= float(tracking_config["start_speed_tolerance"])
    )


# Check whether the vehicle is close enough to the final Cartesian reference point.
def goal_pose_reached(current_state: np.ndarray, goal_state: np.ndarray, config: dict[str, Any]) -> bool:
    tracking_config = config["tracking"]
    return position_error(current_state, goal_state) <= float(tracking_config["goal_position_tolerance"])


# Run the GO_TO_START and TRACK_REFERENCE state machine.
def run_control_loop(qcar2: Any, reference_manager: ReferenceManager, config: dict[str, Any], logger: ResultLogger) -> None:
    from src.single_track_oampc import GurobiFlatCoordinateOAMPC, angle_error, unwrap_to_reference

    solver_config = config["oampc"]["solver"]
    constraints = config["oampc"]["constraints"]
    horizon_steps = int(config["oampc"]["N"])
    control_period = float(config["oampc"]["Ts"])
    vx_start = float(config["tracking"]["vx_start"])
    start_position_tolerance = float(config["tracking"]["start_position_tolerance"])
    reference_sample_time = reference_manager.sample_time()
    reference_index_step = max(1, int(round(control_period / reference_sample_time)))

    vx_min = float(constraints.get("vx_min", -1.0))
    vx_max = float(constraints.get("vx_max", 1.0))
    stop_on_failure = bool(solver_config["stop_on_failure"])
    max_consecutive_failures = int(solver_config["max_consecutive_failures"])

    state_reader = QLabsStateReader(config, initial_vx=0.0)
    solver = GurobiFlatCoordinateOAMPC(config)
    logger.start()

    start_reference_state = reference_manager.state_at(0)
    start_target_state = start_reference_state.copy()
    start_target_state[3] = 0.0
    final_reference_state = reference_manager.state_at(reference_manager.sample_count() - 1)

    mode = "GO_TO_START"
    run_start_time = time.perf_counter()
    tracking_start_time: float | None = None
    next_tick = run_start_time
    velocity_command = 0.0
    consecutive_failures = 0

    try:
        while True:
            loop_time = time.perf_counter()
            run_elapsed_time = loop_time - run_start_time
            state_ok, measured_state = state_reader.read(qcar2)
            if not state_ok:
                print("State read failed.")
                break

            ref_index = 0
            is_near_start = False

            if mode == "GO_TO_START":
                measured_state[2] = unwrap_to_reference(measured_state[2], start_target_state[2])
                start_position_error = float(np.linalg.norm(measured_state[0:2] - start_target_state[0:2]))
                is_near_start = start_position_error <= start_position_tolerance

                if start_pose_reached(measured_state, start_target_state, config):
                    stop_qcar(qcar2)
                    velocity_command = 0.0
                    solver.reset_warm_start()
                    tracking_start_time = time.perf_counter()
                    next_tick = tracking_start_time
                    mode = "TRACK_REFERENCE"
                    print("Tracking started.")
                    continue

                reference_state_horizon, reference_input_horizon = reference_manager.build_fixed_target_horizon(start_target_state, horizon_steps)

            elif mode == "TRACK_REFERENCE":
                assert tracking_start_time is not None
                tracking_elapsed_time = loop_time - tracking_start_time
                ref_index = int(round(tracking_elapsed_time / reference_sample_time))
                ref_index = int(np.clip(ref_index, 0, reference_manager.sample_count() - 1))
                reference_state_horizon, reference_input_horizon = reference_manager.build_horizon(ref_index, horizon_steps, reference_index_step)
                measured_state[2] = unwrap_to_reference(measured_state[2], reference_state_horizon[2, 0])

                near_end_of_reference = ref_index >= reference_manager.sample_count() - horizon_steps - 1
                if near_end_of_reference and goal_pose_reached(measured_state, final_reference_state, config):
                    mode = "FINISHED"
                    break
            else:
                break

            solver_result = solver.solve(measured_state, reference_state_horizon, reference_input_horizon)
            if solver_result.success:
                consecutive_failures = 0
                delta_command = solver_result.delta
                ax_command = solver_result.ax
                v1_command = solver_result.v1
                v2_command = solver_result.v2
                command_vx_min = vx_min
                command_vx_max = vx_max

                if is_near_start:
                    command_vx_min = max(vx_min, -vx_start)
                    command_vx_max = min(vx_max, vx_start)

                velocity_command = float(np.clip(velocity_command + ax_command * control_period, command_vx_min, command_vx_max))
            else:
                consecutive_failures += 1
                print("Solver failed.")
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
            )

            next_tick += control_period
            sleep_until(next_tick)
    except KeyboardInterrupt:
        print("Tracking interrupted.")
    finally:
        stop_qcar(qcar2)
        logger.save()
        if mode == "FINISHED":
            print("Tracking finished.")


# Load files, connect to QLabs, draw references, and run the controller.
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
        print("Connecting to QLabs...")
        qlabs = connect_to_qlabs(config)
        print("Connected to QLabs.")
        qlabs.destroy_all_spawned_actors()
        qcar2 = spawn_qcar2(qlabs, config)
        draw_reference_trajectory(qlabs, reference_manager.xy_points(), config)
        draw_waypoint_markers(qlabs, reference_manager.waypoints, config)

        if WAIT_FOR_ENTER_BEFORE_TRACKING:
            input("Press Enter to start tracking...")

        logger = ResultLogger(config)
        run_control_loop(qcar2, reference_manager, config, logger)

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


if __name__ == "__main__":
    main()
