import cv2
import numpy as np

def _to_frame(img):
    if img is None:
        return None

    if isinstance(img, np.ndarray):
        if img.size == 0:
            return None
        return img

    if isinstance(img, (bytes, bytearray)):
        if len(img) == 0:
            return None
        buf = np.frombuffer(img, dtype=np.uint8)
        if buf.size == 0:
            return None
        return cv2.imdecode(buf, cv2.IMREAD_UNCHANGED)

    return None


def CSI_cameras(qcar2):
    frames = {"front": None, "back": None, "left": None, "right": None}

    ok, img = qcar2.get_image(qcar2.CAMERA_CSI_FRONT)
    if ok:
        frames["front"] = _to_frame(img)
        if frames["front"] is not None:
            cv2.namedWindow("CSI Front", cv2.WINDOW_NORMAL)
            cv2.resizeWindow("CSI Front", 480, 270)
            cv2.imshow("CSI Front", frames["front"])

    ok, img = qcar2.get_image(qcar2.CAMERA_CSI_BACK)
    if ok:
        frames["back"] = _to_frame(img)
        if frames["back"] is not None:
            cv2.namedWindow("CSI Back", cv2.WINDOW_NORMAL)
            cv2.resizeWindow("CSI Back", 480, 270)
            cv2.imshow("CSI Back", frames["back"])

    ok, img = qcar2.get_image(qcar2.CAMERA_CSI_LEFT)
    if ok:
        frames["left"] = _to_frame(img)
        if frames["left"] is not None:
            cv2.namedWindow("CSI Left", cv2.WINDOW_NORMAL)
            cv2.resizeWindow("CSI Left", 480, 270)
            cv2.imshow("CSI Left", frames["left"])

    ok, img = qcar2.get_image(qcar2.CAMERA_CSI_RIGHT)
    if ok:
        frames["right"] = _to_frame(img)
        if frames["right"] is not None:
            cv2.namedWindow("CSI Right", cv2.WINDOW_NORMAL)
            cv2.resizeWindow("CSI Right", 480, 270)
            cv2.imshow("CSI Right", frames["right"])

    return frames


def IntelRealSense_camera(qcar2):
    rgb_frame = None
    depth_frame = None

    ok, img = qcar2.get_image(qcar2.CAMERA_RGB)
    if ok:
        rgb_frame = _to_frame(img)
        if rgb_frame is not None:
            cv2.namedWindow("RealSense RGB", cv2.WINDOW_NORMAL)
            cv2.resizeWindow("RealSense RGB", 480, 270)
            cv2.imshow("RealSense RGB", rgb_frame)

    ok, img = qcar2.get_image(qcar2.CAMERA_DEPTH)
    if ok:
        depth_frame = _to_frame(img)
        if depth_frame is not None:
            cv2.namedWindow("RealSense Depth", cv2.WINDOW_NORMAL)
            cv2.resizeWindow("RealSense Depth", 480, 270)
            cv2.imshow("RealSense Depth", depth_frame)

    return rgb_frame, depth_frame