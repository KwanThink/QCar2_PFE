import sys
sys.path.append("/home/nvidia/Documents/Quanser/libraries/python")

import time
import cv2
from pynput import keyboard
from pal.products.qcar import QCar, IS_PHYSICAL_QCAR

from Qcar2_Functions.Qcar2_Control import (
    on_press,
    on_release,
    compute_command,
    send_command,
    stop_command,
    play_warning_by_distance, 
    set_system_volume,
    _play_tone
)
from Qcar2_Functions.Qcar2_Camera import (
    initialize_csi_cameras,
    initialize_realsense,
    stream_csi_cameras,
    stream_realsense,
    terminate_cameras
)
from Qcar2_Functions.Qcar2_LiDAR import (
    setup_lidar_window,
    initialize_lidar,
    read_and_plot_lidar,
    terminate_lidar,
    get_lidar_nearest_distance
)

# QCAR2 CONFIGURATION
LOOP_DT = 0.02
LIDAR_MAX_DISTANCE = 3
REALSENSE_MAX_DISTANCE = 5
RGB_ENABLE = True
DEPTH_ENABLE = True
RED_RADIUS = 0.25
LIDAR_WARNING_MARGIN = 0.1
WARNING_SYSTEM_VOLUME = 10


def main():
    print("Checking QCar2 Wi-Fi connection...")

    if not IS_PHYSICAL_QCAR:
        print("Unable to connect")
        return

    qcar = QCar()
    print("Connected")

    # Sound test
    set_system_volume(WARNING_SYSTEM_VOLUME)
    _play_tone(freq=900, duration=0.2, volume=0.12)
    time.sleep(0.2)

    # Initialize all cameras
    # csi_cam = initialize_csi_cameras()
    csi_cam = None

    realsense_cam = initialize_realsense()
    # realsense_cam = None

    lidar_fig, lidar_ax = setup_lidar_window(max_distance=LIDAR_MAX_DISTANCE)
    lidar = initialize_lidar()

    listener = keyboard.Listener(on_press=on_press, on_release=on_release)
    listener.start()

    print("\nReady to drive !!!!!")
    print("Up/Down   : forward / reverse")
    print("Left/Right: steering")
    print("Space     : boost")
    print("Esc       : quit")

    while listener.running:
        speed, steer = compute_command()
        send_command(qcar, speed, steer)

        # Four CSI cameras
        # csi_frames, csi_combined = stream_csi_cameras(csi_cam)

        # IntelRealSense D435 camera
        rgb_frame, depth_frame, rs_combined = stream_realsense(
            realsense_cam,
            max_distance=REALSENSE_MAX_DISTANCE,
            use_rgb=RGB_ENABLE,
            use_depth=DEPTH_ENABLE,
            depth_Mode='PX'
        )

        ok, angles, distances = read_and_plot_lidar(
            lidar,
            ax=lidar_ax,
            max_distance=LIDAR_MAX_DISTANCE,
            plot_every_n=1,
            downsample=2
        )

        if ok:
            nearest_distance = get_lidar_nearest_distance(distances)

            play_warning_by_distance(
                nearest_distance,
                red_radius=RED_RADIUS,
                warn_margin=LIDAR_WARNING_MARGIN,
                system_volume_percent=WARNING_SYSTEM_VOLUME
            )

        key = cv2.waitKey(1) & 0xFF
        if key == 27:
            break
        time.sleep(LOOP_DT)


    stop_command(qcar)
    listener.stop()
    terminate_cameras(csi_cam, realsense_cam)
    terminate_lidar(lidar)
    cv2.destroyAllWindows()
    print("QCar2 stopped.")



if __name__ == "__main__":
    main()