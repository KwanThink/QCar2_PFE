"""
Multiagent & Obstacles Environment
----------------------------------
This code initializes an environment with a free camera, several geometric obstacles, and a QCar2 ready for control.
"""

import time
import numpy as np
from qvl.multi_agent import MultiAgent, readRobots
from qvl.qlabs import QuanserInteractiveLabs
from qvl.free_camera import QLabsFreeCamera
from qvl.basic_shape import QLabsBasicShape
import sys

# 1. Connection to the simulator
qlabs = QuanserInteractiveLabs()
    
print("Connecting to QLabs...")
if (not qlabs.open("localhost")):
    print("Unable to connect to QLabs") 
    sys.exit()  

print("Connected")  

# Clear environment before deploying obstacle
qlabs.destroy_all_spawned_actors()

# 2. Camera configuration
camera = QLabsFreeCamera(qlabs)
camera.spawn_degrees(location=[0.063, 1.9, 0.603], rotation=[0, 9.186, -83.687])
camera.possess()

# 3. Automated generation of multiple obstacles 
# List: [Position, Rotation, Scale, RGB Color, Shape Type]
obstacles_config = [
    {"loc": [-1.0, -0.8, 0.0], "rot": [0,0,0], "scale": [0.2, 0.2, 0.5], "color": [0,1,0], "type": QLabsBasicShape.SHAPE_CUBE},
    {"loc": [0.7, -0.4, 0.0],  "rot": [0,0,0], "scale": [0.2, 0.2, 0.5], "color": [0,0,1], "type": QLabsBasicShape.SHAPE_CONE},
    {"loc": [0.5, 1.0, 0.0],   "rot": [0,0,0], "scale": [0.3, 0.3, 0.6], "color": [1,0,0], "type": QLabsBasicShape.SHAPE_CYLINDER},
    {"loc": [-1.5, 0.5, 0.0],  "rot": [0,0,0], "scale": [0.2, 0.2, 0.2], "color": [1,1,0], "type": QLabsBasicShape.SHAPE_SPHERE},
    {"loc": [0.0, -1.5, 0.0],  "rot": [0,0,45],"scale": [0.1, 0.5, 0.2], "color": [1,0,1], "type": QLabsBasicShape.SHAPE_CUBE},
    {"loc": [-0.5, 1.0, 0.0],  "rot": [0,0,45],"scale": [0.3, 0.2, 0.3], "color": [0,1,1], "type": QLabsBasicShape.SHAPE_CYLINDER}
]

print(f"Spawning {len(obstacles_config)} obstacles...")

for i, obs in enumerate(obstacles_config):
    shape = QLabsBasicShape(qlabs)
    # We use a unique ID (i) for each shape
    success = shape.spawn(
        location=obs["loc"], 
        rotation=obs["rot"], 
        scale=obs["scale"], 
        configuration=obs["type"], 
        waitForConfirmation=True
    )
    if success:
        shape.set_material_properties(color=obs["color"])
    time.sleep(0.1)

print("Obstacles spawned successfully.")

# 4. Multi-Agent Configuration (The Robot)
myRobots = []

# Added QCar2 (Actor Number 5)
myRobots.append({
    "RobotType": "QCar2", 
    "Location": [-0.5, 0, 0], 
    "Rotation": [0, 0, 90], 
    "Scale": 0.1,  # 1/10th scale for the open world
    "ActorNumber" : 5 
})

# Multi-Agent Initialization
print("Initializing MultiAgent...")
mySpawns = MultiAgent(myRobots)

# Retrieving the car object
actors = mySpawns.robotActors
qcar = actors[0]

print(f"Spawned Robot : ID {qcar.actorNumber}, Classe {qcar.classID}")

# Visual test: Turn on the LEDs in purple
qcar.set_led_strip_uniform(color=[1,0,1])


# 5. HIL (Hardware In the Loop) information retrieval
actorsDict = mySpawns.robotsDict
print("\nRobot dictionnary:")
print(actorsDict)

if "QC2_5" in actorsDict:
    hil_port = actorsDict["QC2_5"]["hilPort"]
    print(f"\n✅ Success! The HIL port for QC2_5 is: {hil_port}")
else:
    print("\n❌ Error: The QC2_5 robot was not detected correctly")

# Keep the script running for a few seconds for observation
time.sleep(2)

print("\nEnd of script. The scene remains open in QLabs.")
# qlabs.close()  # Uncomment to close the connection automatically