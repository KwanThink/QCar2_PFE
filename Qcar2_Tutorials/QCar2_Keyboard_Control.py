import time
import math
import cv2
import sys
from qvl.qlabs import QuanserInteractiveLabs
from qvl.qcar2 import QLabsQCar2
from qvl.free_camera import QLabsFreeCamera
from qvl.basic_shape import QLabsBasicShape
from pynput import keyboard

# --- CONFIGURATION ---
CAR_ID = 5 
MAX_STEER = 0.5  
VITESSE_NORMALE = 1.2
VITESSE_RAPIDE = 3.0

keys = {'up': False, 'down': False, 'left': False, 'right': False, 'boost': False}

def on_press(key):
    try:
        if key == keyboard.Key.up:    keys['up'] = True
        if key == keyboard.Key.down:  keys['down'] = True
        if key == keyboard.Key.left:  keys['left'] = True
        if key == keyboard.Key.right: keys['right'] = True
        if key == keyboard.Key.space: keys['boost'] = True
    except AttributeError: pass

def on_release(key):
    if key == keyboard.Key.up:    keys['up'] = False
    if key == keyboard.Key.down:  keys['down'] = False
    if key == keyboard.Key.left:  keys['left'] = False
    if key == keyboard.Key.right: keys['right'] = False
    if key == keyboard.Key.space: keys['boost'] = False
    if key == keyboard.Key.esc: return False

def main():
    qlabs = QuanserInteractiveLabs()
    print("Connection to QLabs...")
    if (not qlabs.open("localhost")):
        print("Error connection") 
        return
    
    # Clear environment before deploying obstacle
    qlabs.destroy_all_spawned_actors()

    # Obstacles
    camera = QLabsFreeCamera(qlabs)
    camera.spawn_degrees(location=[0.063, 1.9, 0.603], rotation=[0, 9.186, -83.687])
    camera.possess()

    # Green cube and blue cone
    # cube = QLabsBasicShape(qlabs)
    # cube.spawn(location=[-1, -0.8, 0], scale=[0.2, 0.2, 1], configuration=cube.SHAPE_CUBE)
    # cube.set_material_properties(color=[0, 1, 0])

    # cone = QLabsBasicShape(qlabs)
    # cone.spawn(location=[0.7, -0.4, 0], scale=[0.2, 0.2, 1], configuration=cone.SHAPE_CONE)
    # cone.set_material_properties(color=[0, 0, 1])

    # 1. INITIALISATION DIRECTE DU QCAR (Plus fiable que MultiAgent pour le pilotage)
    hQCar = QLabsQCar2(qlabs)
    # On spawn le robot avec l'échelle 0.1 requise
    hQCar.spawn_id(actorNumber=CAR_ID, location=[-0.5, 0, 0.005], rotation=[0,0,math.pi/2], scale=[0.1, 0.1, 0.1], waitForConfirmation=True)
    hQCar.possess(hQCar.CAMERA_TRAILING)
    hQCar.set_led_strip_uniform(color=[1, 0, 1]) # Confirmation visuelle (Violet)

    listener = keyboard.Listener(on_press=on_press, on_release=on_release)
    listener.start()

    print(f"\n--- PRÊT À CONDUIRE (QCAR {CAR_ID}) ---")

    try:
        while listener.running:
            # Calcul de la vitesse selon le bouton Boost
            v_max = VITESSE_RAPIDE if keys['boost'] else VITESSE_NORMALE
            
            speed = 0.0
            if keys['up']: speed = v_max
            elif keys['down']: speed = -v_max
            
            steer = 0.0
            if keys['left']: steer = MAX_STEER
            if keys['right']: steer = -MAX_STEER

            # Forcer le mouvement pour que la direction réponde (Ackermann)
            if steer != 0 and speed == 0:
                speed = 0.3

            # 2. ENVOI DES COMMANDES (Impératif : tous les arguments)
            hQCar.set_velocity_and_request_state(
                forward=float(speed), 
                turn=float(steer), 
                headlights=True,
                leftTurnSignal=keys['left'], 
                rightTurnSignal=keys['right'], 
                brakeSignal=(speed == 0), 
                reverseSignal=(speed < 0)
            )

            # Affichage Vidéo
            try:
                success, img = hQCar.get_image(hQCar.CAMERA_TRAILING)
                if success and img is not None and img.size > 0:
                    cv2.imshow("Vision Pilotage", img)
            except: pass

            if cv2.waitKey(1) & 0xFF == 27: break
            time.sleep(0.02) # Haute fréquence pour réactivité

    finally:
        hQCar.set_velocity_and_request_state(0,0,False,False,False,True,False)
        cv2.destroyAllWindows()
        qlabs.close()

if __name__ == "__main__":
    main()