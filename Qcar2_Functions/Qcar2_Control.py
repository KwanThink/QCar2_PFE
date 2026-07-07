from pynput import keyboard
import numpy as np
import time
import shutil
import subprocess


MAX_STEER = 0.25
SPEED_NORMAL = 0.1
SPEED_BOOST = 0.2
STEER_ONLY_CREEP_SPEED = 0.04

keys = {
    "up": False,
    "down": False,
    "left": False,
    "right": False,
    "boost": False
}

_last_beep_time = 0.0

def play_warning_sound(cooldown=0.25, freq=1000, duration=0.08):
    global _last_beep_time

    now = time.time()
    if now - _last_beep_time < cooldown:
        return False

    played = False

    try:
        subprocess.Popen(
            [
                "play",
                "-n",
                "synth", str(duration),
                "sine", str(freq)
            ],
            stdout=subprocess.DEVNULL,
            stderr=subprocess.DEVNULL
        )
        played = True
    except Exception:
        pass

    if not played:
        try:
            print('\a', end='', flush=True)
            played = True
        except Exception:
            pass

    if played:
        _last_beep_time = now

    return played

_last_warning_time = 0.0


def set_system_volume(percent=100):
    percent = int(max(0, min(100, percent)))

    if shutil.which("amixer") is None:
        return False

    controls = ["Master", "Speaker", "PCM"]
    success = False

    for ctrl in controls:
        try:
            subprocess.run(
                ["amixer", "sset", ctrl, f"{percent}%"],
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL,
                check=False
            )
            success = True
        except Exception:
            pass

    return success


def _play_tone(freq=1400, duration=0.18, volume=1.0):
    volume = float(max(0.0, min(1.0, volume)))

    if shutil.which("play") is not None:
        try:
            subprocess.Popen(
                [
                    "play",
                    "-q",
                    "-n",
                    "synth", str(duration),
                    "sine", str(freq),
                    "gain", "-2",
                    "vol", str(volume)
                ],
                stdout=subprocess.DEVNULL,
                stderr=subprocess.DEVNULL
            )
            return True
        except Exception:
            return False

    return False


def compute_warning_profile(
    nearest_distance,
    red_radius=0.25,
    warn_margin=0.1
):
    if nearest_distance is None:
        return False, 0.30, 1200, 0.10, 0.60

    warn_threshold = red_radius + warn_margin   # 0.35

    if nearest_distance > warn_threshold:
        return False, 0.30, 1200, 0.10, 0.60

    if nearest_distance <= red_radius:
        danger = 1.0
    else:
        danger = (warn_threshold - nearest_distance) / (warn_threshold - red_radius)
        danger = max(0.0, min(1.0, danger))

    # Sound Configuration
    cooldown = 0.25 - 0.20 * danger     # 0.25 -> 0.05
    freq     = 1000 + int(500 * danger)  # 1000 -> 1500
    duration = 0.15 + 0.2 * danger     # 0.15 -> 0.35
    volume   = 0.05 + 0.05 * danger     # 0.05 -> 0.1

    return True, cooldown, freq, duration, volume


def play_warning_by_distance(
    nearest_distance,
    red_radius=0.25,
    warn_margin=0.15,
    system_volume_percent=100
):
    global _last_warning_time

    should_warn, cooldown, freq, duration, volume = compute_warning_profile(
        nearest_distance,
        red_radius=red_radius,
        warn_margin=warn_margin
    )

    if not should_warn:
        return False

    now = time.time()
    if now - _last_warning_time < cooldown:
        return False

    set_system_volume(system_volume_percent)

    played = _play_tone(
        freq=freq,
        duration=duration,
        volume=volume
    )

    if played:
        _last_warning_time = now

    return played


def on_press(key):
    if key == keyboard.Key.up:
        keys["up"] = True
    elif key == keyboard.Key.down:
        keys["down"] = True
    elif key == keyboard.Key.left:
        keys["left"] = True
    elif key == keyboard.Key.right:
        keys["right"] = True
    elif key == keyboard.Key.space:
        keys["boost"] = True


def on_release(key):
    if key == keyboard.Key.up:
        keys["up"] = False
    elif key == keyboard.Key.down:
        keys["down"] = False
    elif key == keyboard.Key.left:
        keys["left"] = False
    elif key == keyboard.Key.right:
        keys["right"] = False
    elif key == keyboard.Key.space:
        keys["boost"] = False
    elif key == keyboard.Key.esc:
        return False


def compute_command():
    v_max = SPEED_BOOST if keys["boost"] else SPEED_NORMAL

    speed = 0.0
    if keys["up"] and not keys["down"]:
        speed = v_max
    elif keys["down"] and not keys["up"]:
        speed = -v_max

    steer = 0.0
    if keys["left"] and not keys["right"]:
        steer = MAX_STEER
    elif keys["right"] and not keys["left"]:
        steer = -MAX_STEER

    if steer != 0.0 and speed == 0.0:
        speed = STEER_ONLY_CREEP_SPEED

    return float(speed), float(steer)


def build_leds(speed, steer, headlights=True):
    """
    QCar expects an 8-element LED vector.
    Layout used here:
      [0:4] indicators, [4] brake, [5] reverse, [6] left headlamps, [7] right headlamps
    """
    leds = np.zeros(8, dtype=np.int8)

    turning_left = steer < 0.0
    turning_right = steer > 0.0
    braking = abs(speed) < 1e-6
    reversing = speed < 0.0

    # Indicators: using two channels per side
    if turning_left:
        leds[0] = 1
        leds[2] = 1

    if turning_right:
        leds[1] = 1
        leds[3] = 1

    if braking:
        leds[4] = 1

    if reversing:
        leds[5] = 1

    if headlights:
        leds[6] = 1
        leds[7] = 1

    return leds


def send_command(qcar, speed, steer, headlights=True):
    leds = build_leds(speed, steer, headlights=headlights)

    if hasattr(qcar, "read_write_std"):
        qcar.read_write_std(
            throttle=float(speed),
            steering=float(steer),
            LEDs=leds
        )
        return

    if hasattr(qcar, "write"):
        qcar.write(
            throttle=float(speed),
            steering=float(steer),
            LEDs=leds
        )
        if hasattr(qcar, "read"):
            qcar.read()
        return

    return None


def stop_command(qcar, headlights=True):
    send_command(qcar, 0.0, 0.0, headlights=headlights)