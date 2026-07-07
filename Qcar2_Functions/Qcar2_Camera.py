import cv2
import numpy as np
from pal.products.qcar import QCarCameras, QCarRealSense


RS_RGB_WIDTH = 640
RS_RGB_HEIGHT = 360
RS_RGB_RATE = 60

RS_DEPTH_WIDTH = 640
RS_DEPTH_HEIGHT = 360
RS_DEPTH_RATE = 90
RS_TILE_SIZE = (640, 360)

CSI_WINDOW_SIZE = (480, 270)

CSI_TILE_SIZE = (480, 270)
CSI_COMBINED_WINDOW_SIZE = (CSI_TILE_SIZE[0] * 2, CSI_TILE_SIZE[1] * 2)

def initialize_csi_cameras():
    csi_cam = QCarCameras(
        enableBack=True,
        enableFront=True,
        enableLeft=True,
        enableRight=True
    )

    cv2.namedWindow("CSI Cameras", cv2.WINDOW_NORMAL)
    cv2.resizeWindow("CSI Cameras", *CSI_COMBINED_WINDOW_SIZE)

    return csi_cam


def _prepare_csi_tile(frame, label):
    if frame is None:
        tile = np.zeros((CSI_TILE_SIZE[1], CSI_TILE_SIZE[0], 3), dtype=np.uint8)
    else:
        tile = _ensure_bgr(frame)
        tile = cv2.resize(tile, CSI_TILE_SIZE, interpolation=cv2.INTER_AREA)

    return _make_label(tile, label)


def initialize_realsense():
    try:
        realsense_camera = QCarRealSense(
            mode='RGB&DEPTH',
            frameWidthRGB=RS_RGB_WIDTH,
            frameHeightRGB=RS_RGB_HEIGHT,
            frameRateRGB=RS_RGB_RATE,
            frameWidthDepth=RS_DEPTH_WIDTH,
            frameHeightDepth=RS_DEPTH_HEIGHT,
            frameRateDepth=RS_DEPTH_RATE
        )
    except TypeError:
        realsense_camera = QCarRealSense(mode='RGB&DEPTH')

    cv2.namedWindow("RealSense RGB + Depth", cv2.WINDOW_NORMAL)
    cv2.resizeWindow("RealSense RGB + Depth", RS_TILE_SIZE[0] * 2, RS_TILE_SIZE[1])

    return realsense_camera


def _normalize_depth_for_display(depth_frame, max_distance):
    depth = depth_frame.astype(np.float32)
    depth = np.clip(depth, 0.0, float(max_distance))
    depth = depth / float(max_distance)
    depth = (depth * 255.0).astype(np.uint8)
    return depth


def _ensure_bgr(frame):
    if frame is None:
        return None

    if len(frame.shape) == 2:
        return cv2.cvtColor(frame, cv2.COLOR_GRAY2BGR)

    return frame


def _make_label(frame, text):
    out = frame.copy()
    cv2.putText(
        out, text, (10, 25),
        cv2.FONT_HERSHEY_SIMPLEX, 0.7,
        (0, 255, 0), 2, cv2.LINE_AA
    )
    return out


def stream_csi_cameras(csi_cam):
    csi_cam.readAll()

    frames = {
        "front": None,
        "back": None,
        "left": None,
        "right": None
    }

    if csi_cam.csiFront is not None:
        frames["front"] = csi_cam.csiFront.imageData

    if csi_cam.csiBack is not None:
        frames["back"] = csi_cam.csiBack.imageData

    if csi_cam.csiLeft is not None:
        frames["left"] = csi_cam.csiLeft.imageData

    if csi_cam.csiRight is not None:
        frames["right"] = csi_cam.csiRight.imageData

    front_tile = _prepare_csi_tile(frames["front"], "Front")
    right_tile = _prepare_csi_tile(frames["right"], "Right")
    left_tile = _prepare_csi_tile(frames["left"], "Left")
    back_tile = _prepare_csi_tile(frames["back"], "Back")

    top_row = np.hstack((front_tile, right_tile))
    bottom_row = np.hstack((left_tile, back_tile))
    combined = np.vstack((top_row, bottom_row))

    cv2.imshow("CSI Cameras", combined)

    return frames, combined


def stream_realsense(
    realsense_camera,
    max_distance=5.0,
    use_rgb=True,
    use_depth=True,
    depth_Mode='M'
):

    rgb_frame = None
    depth_frame = None

    if use_rgb:
        realsense_camera.read_RGB()
        rgb_frame = realsense_camera.imageBufferRGB

    if use_depth:
        realsense_camera.read_depth(dataMode=depth_Mode)
        if depth_Mode.upper() == 'M':
            depth_frame = realsense_camera.imageBufferDepthM
        elif depth_Mode.upper() == 'PX':
            depth_frame = realsense_camera.imageBufferDepthPX

    # RGB
    if rgb_frame is not None:
        rgb_display = _ensure_bgr(rgb_frame)
        rgb_display = cv2.resize(rgb_display, RS_TILE_SIZE, interpolation=cv2.INTER_AREA)
    else:
        rgb_display = np.zeros((RS_TILE_SIZE[1], RS_TILE_SIZE[0], 3), dtype=np.uint8)

    # Depth
    if depth_frame is not None:
        depth_display = _normalize_depth_for_display(depth_frame, max_distance=max_distance)
        depth_display = cv2.resize(depth_display, RS_TILE_SIZE, interpolation=cv2.INTER_AREA)
        depth_display = cv2.cvtColor(depth_display, cv2.COLOR_GRAY2BGR)
    else:
        depth_display = np.zeros((RS_TILE_SIZE[1], RS_TILE_SIZE[0], 3), dtype=np.uint8)

    rgb_display = _make_label(rgb_display, "RGB")
    depth_display = _make_label(depth_display, "Depth")

    combined = np.hstack((rgb_display, depth_display))
    cv2.imshow("RealSense RGB + Depth", combined)

    return rgb_frame, depth_frame, combined


def terminate_cameras(csi_cam=None, realsense_camera=None):
    if csi_cam is not None and hasattr(csi_cam, "terminate"):
        csi_cam.terminate()

    if realsense_camera is not None and hasattr(realsense_camera, "terminate"):
        realsense_camera.terminate()