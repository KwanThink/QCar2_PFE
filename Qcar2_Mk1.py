import numpy as np
import sys
import time
import cv2

from qvl.qlabs import QuanserInteractiveLabs
from qvl.qcar2 import QLabsQCar2
from pynput import keyboard


from Qcar2_Functions.Qcar2_CtrlSim import on_press, on_release, compute_command, send_command
from Qcar2_Functions.Qcar2_CamSim import CSI_cameras, IntelRealSense_camera
from Qcar2_Functions.Qcar2_LiDAR import setup_lidar_window_sim, LiDAR_sim
import matplotlib.pyplot as plt

# Configuration
QLABS_HOST = "localhost"
CAR_ID = 5
SPAWN_LOCATION = [0.0, 0.0, 0.0]
SPAWN_ROTATION = [0.0, 0.0, 0.0]
SPAWN_SCALE = [0.1, 0.1, 0.1]
LOOP_DT = 0.02

# Connect to Quanser Interactive Labs
qlabs = QuanserInteractiveLabs()
print("Connecting to QLabs...")
if (not qlabs.open("localhost")):
    print("Unable to connect to QLabs") 
    sys.exit()  
print("Connected")

# Clear the environment and deploy the Qcar2
qlabs.destroy_all_spawned_actors()

qcar2 = QLabsQCar2(qlabs)
qcar2.spawn_id(actorNumber=CAR_ID, location=SPAWN_LOCATION, 
            rotation=SPAWN_ROTATION, scale=SPAWN_SCALE,
            waitForConfirmation=True)
qcar2.possess(qcar2.CAMERA_TRAILING)
qcar2.set_led_strip_uniform(color = [0,1,1])

listener = keyboard.Listener(on_press=on_press, on_release=on_release)
listener.start()

print("\nReady to drive !!!!!")
print("Up/Down   : forward / reverse")
print("Left/Right: steering")
print("Space     : boost")
print("Esc       : quit")

lidar_fig, lidar_ax = setup_lidar_window_sim(max_distance=15)

while listener.running:
    # Control command
    speed, steer = compute_command()
    send_command(qcar2, speed, steer)

    # Streaming images from all cameras
    csi_frames = CSI_cameras(qcar2)
    rgb_frame, depth_frame = IntelRealSense_camera(qcar2)

    # LiDAR scanning
    status, angles, distances = LiDAR_sim(qcar2, lidar_ax, sample_points=1000, max_distance=15)

    cv2.waitKey(1)
    time.sleep(LOOP_DT)

send_command(qcar2, 0.0, 0.0)
listener.stop()
cv2.destroyAllWindows()
qlabs.close()

print("QCar stopped and QLabs connection closed.")


