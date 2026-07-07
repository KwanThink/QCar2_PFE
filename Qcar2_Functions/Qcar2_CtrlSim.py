from pynput import keyboard

MAX_STEER = 0.25
SPEED_NORMAL = 1.2
SPEED_BOOST = 2.4
STEER_ONLY_CREEP_SPEED = 0.3

keys = {'up': False, "down":False, "left": False, "right": False, "boost": False}

def on_press(key):
    if key == keyboard.Key.up: keys["up"] = True
    elif key == keyboard.Key.down: keys["down"] = True
    elif key == keyboard.Key.left: keys["left"] = True
    elif key == keyboard.Key.right: keys["right"] = True
    elif key == keyboard.Key.space: keys["boost"] = True

def on_release(key):
    if key == keyboard.Key.up: keys["up"] = False
    elif key == keyboard.Key.down: keys["down"] = False
    elif key == keyboard.Key.left: keys["left"] = False
    elif key == keyboard.Key.right: keys["right"] = False
    elif key == keyboard.Key.space: keys["boost"] = False
    elif key == keyboard.Key.esc: return False


def compute_command():
    v_max = SPEED_BOOST if keys["boost"] else SPEED_NORMAL
    # Speed control
    speed = 0.0
    if keys["up"] and not keys["down"]:
        speed = v_max
    elif keys["down"] and not keys["up"]:
        speed = -v_max
    
    # Steer control
    steer = 0.0
    if keys["right"] and not keys["left"]:
        steer = MAX_STEER
    elif keys["left"] and not keys["right"]:
        steer = -MAX_STEER

     # Help the Ackermann vehicle react when only steering is requested.
    if steer != 0.0 and speed == 0.0:
        speed = STEER_ONLY_CREEP_SPEED

    return speed, steer

def send_command(qcar, speed, steer):
    qcar.set_velocity_and_request_state(
        forward = float(speed),
        turn  =float(steer),
        headlights = True,
        leftTurnSignal = (steer < 0.0),
        rightTurnSignal = (steer > 0.0),
        brakeSignal = (speed == 0.0),
        reverseSignal = (speed < 0.0)
    )