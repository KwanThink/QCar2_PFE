import matplotlib.pyplot as plt
import numpy as np
from pal.products.qcar import QCarLidar


# Used for Quanser Interactive Lab
# ================================
def setup_lidar_window_sim(max_distance=12):
    plt.ion()
    fig = plt.figure("QCar2 LiDAR")
    ax = fig.add_subplot(111, projection="polar")
    ax.set_theta_zero_location("N")
    ax.set_theta_direction(-1)
    ax.set_rmax(max_distance)
    ax.grid(True)
    plt.show(block=False)
    return fig, ax


def LiDAR_sim(qcar2, ax, sample_points=1000, max_distance=80):
    status, angles, distances = qcar2.get_lidar(samplePoints=sample_points)

    if status and ax is not None:
        ax.clear()
        ax.scatter(angles, distances, marker=".")
        ax.set_theta_zero_location("N")
        ax.set_theta_direction(-1)
        ax.set_rmax(max_distance)
        ax.grid(True)
        plt.pause(0.001)

    return status, angles, distances


# Used for QCar2 real car
# =======================
def setup_lidar_window(max_distance=12):
    plt.ion()

    fig = plt.figure("QCar2 LiDAR")
    ax = fig.add_subplot(111, projection="polar")

    ax.set_theta_zero_location("N")
    ax.set_theta_direction(-1)
    ax.set_rmax(max_distance)
    ax.set_ylim(0, max_distance)
    ax.set_rticks(np.arange(0.5, max_distance + 0.001, 0.5))
    ax.grid(True)

    # Static warning circles
    theta = np.linspace(0, 2 * np.pi, 720)
    ax.plot(theta, np.full_like(theta, 0.25), color="red", linewidth=1.5)
    ax.plot(theta, np.full_like(theta, 0.5), color="yellow", linewidth=1.5)

    # Dynamic LiDAR points
    lidar_points, = ax.plot(
        [],
        [],
        linestyle="None",
        marker=".",
        markersize=3,
    )

    ax._lidar_points_artist = lidar_points
    ax._lidar_redraw_counter = 0

    plt.show(block=False)
    plt.pause(0.001)

    return fig, ax

def initialize_lidar():
    return QCarLidar(numMeasurements=720, rangingDistanceMode = 1, 
                     interpolationMaxAngle= np.deg2rad(1), interpolationMaxDistance=0.3, 
                     interpolationMode=0, angularResolution=1*np.pi/180)


def read_and_plot_lidar(lidar, ax=None, max_distance=12, plot_every_n=1, downsample=2):
    ok = lidar.read()
    if not ok:
        return False, np.array([]), np.array([])

    angles = np.asarray(lidar.angles).squeeze()
    distances = np.asarray(lidar.distances).squeeze()

    n = min(len(angles), len(distances))
    if n == 0:
        return False, np.array([]), np.array([])

    angles = angles[:n]
    distances = distances[:n]

    valid = np.isfinite(angles) & np.isfinite(distances)
    angles = angles[valid]
    distances = distances[valid]

    if len(angles) == 0:
        return False, np.array([]), np.array([])

    angles = np.mod(angles - np.pi, 2 * np.pi)

    if ax is not None and hasattr(ax, "_lidar_points_artist"):
        if downsample > 1:
            plot_angles = angles[::downsample]
            plot_distances = distances[::downsample]
        else:
            plot_angles = angles
            plot_distances = distances

        ax._lidar_redraw_counter += 1
        if ax._lidar_redraw_counter >= max(1, int(plot_every_n)):
            ax._lidar_redraw_counter = 0

            ax._lidar_points_artist.set_data(plot_angles, plot_distances)
            ax.set_ylim(0, max_distance)
            ax.set_rmax(max_distance)

            plt.pause(0.001)

    return True, angles, distances


def get_lidar_nearest_distance(distances, min_valid_distance=0.02):
    if distances is None:
        return None

    distances = np.asarray(distances).squeeze()
    if distances.size == 0:
        return None

    valid = np.isfinite(distances) & (distances >= min_valid_distance)
    if not np.any(valid):
        return None

    return float(np.min(distances[valid]))

def is_lidar_in_warning_zone(
    distances,
    red_radius=0.25,
    extra_margin=0.15,
    min_valid_distance=0.02
):
    nearest = get_lidar_nearest_distance(
        distances,
        min_valid_distance=min_valid_distance
    )
    if nearest is None:
        return False

    threshold = float(red_radius) + float(extra_margin)
    return nearest <= threshold

def terminate_lidar(lidar=None):
    if lidar is not None and hasattr(lidar, "terminate"):
        lidar.terminate()