import sys

from qvl.qlabs import QuanserInteractiveLabs
from qvl.free_camera import QLabsFreeCamera
from qvl.basic_shape import QLabsBasicShape
from qvl.qcar2 import QLabsQCar2
from qvl.environment_outdoors import QLabsEnvironmentOutdoors

import time
import math
import numpy as np
import cv2
import os

import pyqtgraph as pg
from pyqtgraph.Qt import QtWidgets

from qvl.system import QLabsSystem



def main():
    os.system('cls')

    #Communications with qlabs

    qlabs = QuanserInteractiveLabs()
    cv2.startWindowThread()

    print("Connecting to QLabs...")
    if (not qlabs.open("localhost")):
        print("Unable to connect to QLabs")
        return    

    print("Connected")

    qlabs.destroy_all_spawned_actors()

    hSystem = QLabsSystem(qlabs)
    hSystem.set_title_string('QCar2 interactive tutorials')

    #spawning the QCar
    hQCar0 = QLabsQCar2(qlabs)
    hQCar0.spawn_id(actorNumber=0, location=[0, -1, 0.005], rotation=[0,0,math.pi/2], waitForConfirmation=True)

    # Possessing the overhead camera on the QCar
    hQCar0.possess(hQCar0.CAMERA_OVERHEAD)
    time.sleep(0.5)
    
    # Possessing the trailing camera on the QCar
    hQCar0.possess(hQCar0.CAMERA_TRAILING)
    time.sleep(0.5)
    
    #Possessing the front CSI camera on the QCar
    hQCar0.possess(hQCar0.CAMERA_CSI_FRONT)
    time.sleep(0.5)

    # Possessing the right CSI camera on the QCar
    hQCar0.possess(hQCar0.CAMERA_CSI_RIGHT)
    time.sleep(0.5)

    # Possessing the back CSI camera on the QCar
    hQCar0.possess(hQCar0.CAMERA_CSI_BACK)
    time.sleep(0.5)

    # Possessing the left CSI camera on the QCar
    hQCar0.possess(hQCar0.CAMERA_CSI_LEFT)
    time.sleep(0.5)

    # Possessing the front RealSense RGB camera on the QCar
    hQCar0.possess(hQCar0.CAMERA_RGB)
    time.sleep(0.5)

    # Possessing the RealSense depth camera on the QCar
    # hQCar0.possess(hQCar0.CAMERA_DEPTH)
    # time.sleep(0.5)


    # Closing qlabs
    qlabs.close()
    print("Done!")

main()