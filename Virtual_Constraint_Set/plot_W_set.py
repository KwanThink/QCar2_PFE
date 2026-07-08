#!/usr/bin/env python3
"""
Plot the original input constraint set U and the virtual input constraint set W
for the flatness-based MI-OAMPC notation.

The virtual input set is defined as

    W = { nu : [tan(u1_min), u2_min]^T <= M nu <= [tan(u1_max), u2_max]^T }

with

    u1 = delta,  u2 = ax,
    nu = [nu1, nu2]^T,

and

    M = [[-(Lwb / vx^2) sin(psi),  (Lwb / vx^2) cos(psi)],
         [ cos(psi),                sin(psi)              ]].

All angles are in radians.
"""

from pathlib import Path

import matplotlib.pyplot as plt
from matplotlib.patches import Polygon
import numpy as np


delta_min = -0.5236
delta_max = 0.5236
ax_min = -0.3
ax_max = 0.3
Lwb = 0.25725

# Fixed vx and psi's values are used by main() to draw multiple W sets in one figure.
# vx_array  = np.array([0.20, 0.28, 0.36, 0.45, 0.58, 0.72, 0.85, 0.92, 0.84, 0.70, 0.52, 0.35])
# psi_array = np.array([0.00,-0.06,-0.12,-0.20,-0.29,-0.39,-0.50,-0.60,-0.69,-0.77,-0.84,-0.90])

# vx_array = np.array([
#     0.20, 0.23, 0.26, 0.29, 0.32,
#     0.35, 0.38, 0.41, 0.44, 0.47,
#     0.50, 0.53, 0.56, 0.59, 0.62,
#     0.65, 0.68, 0.71, 0.74, 0.77,
#     0.80, 0.83, 0.86, 0.89, 0.92,
#     0.92, 0.89, 0.86, 0.83, 0.80,
#     0.77, 0.74, 0.71, 0.68, 0.65,
#     0.62, 0.59, 0.56, 0.53, 0.50,
#     0.47, 0.44, 0.41, 0.38, 0.35,
#     0.32, 0.29, 0.26, 0.23, 0.20
# ])

# psi_array = np.array([
#     0.00, 0.13, 0.25, 0.38, 0.50,
#     0.63, 0.75, 0.88, 1.01, 1.13,
#     1.26, 1.38, 1.51, 1.63, 1.76,
#     1.88, 2.01, 2.14, 2.26, 2.39,
#     2.51, 2.64, 2.76, 2.89, 3.02,
#     3.14, 3.27, 3.39, 3.52, 3.64,
#     3.77, 3.90, 4.02, 4.15, 4.27,
#     4.40, 4.52, 4.65, 4.78, 4.90,
#     5.03, 5.15, 5.28, 5.40, 5.53,
#     5.65, 5.78, 5.91, 6.03, 6.16
# ])

N = 50

psi_start = 0.0
psi_end = 2.0 * np.pi
psi_step = (psi_end - psi_start) / N

psi_array = np.arange(psi_start, psi_end, psi_step)

vx_value = 0.20
vx_array = np.full(N, vx_value)

# Output folder
OUTPUT_DIR = Path(__file__).resolve().parent / "W_set"


# =============================================================================
# Geometry functions
# =============================================================================
def build_M(vx: float, psi: float) -> np.ndarray:
    c = np.cos(psi)
    s = np.sin(psi)
    scale = Lwb / (vx ** 2)
    return np.array([[-scale * s, scale * c], [c, s]], dtype=float)


# Return the four vertices of U in the (delta, ax) plane.
def get_U_vertices() -> np.ndarray:
    return np.array([
        [delta_min, ax_min],
        [delta_max, ax_min],
        [delta_max, ax_max],
        [delta_min, ax_max],
    ], dtype=float)


# Return the four vertices of W in the (nu1, nu2) plane.
def get_W_vertices(vx: float, psi: float) -> np.ndarray:
    M = build_M(vx, psi)
    M_inv = np.linalg.inv(M)

    utilde_vertices = np.array([
        [np.tan(delta_min), ax_min],
        [np.tan(delta_max), ax_min],
        [np.tan(delta_max), ax_max],
        [np.tan(delta_min), ax_max],
    ], dtype=float)

    W_vertices = []

    for utilde in utilde_vertices:
        v = np.dot(M_inv, utilde)
        W_vertices.append(v)


    return np.array(W_vertices, dtype=float)



# Compute the common intersection of all W rectangles:
#   W_common = W_1 ∩ W_2 ∩ ... ∩ W_n
#
# The algorithm used here is polygon clipping:
# - Start with the first rectangle.
# - Clip it by every edge of the second rectangle.
# - Then clip the result by every edge of the third rectangle, etc.
# - The final polygon is the region shared by all rectangles.
def get_common_intersection(all_vertices: list) -> np.ndarray:
    if len(all_vertices) == 0:
        return np.empty((0, 2), dtype=float)

    common_polygon = np.array(all_vertices[0], dtype=float)
    tolerance = 1.0e-10

    for rectangle_index in range(1, len(all_vertices)):
        clipping_rectangle = np.array(all_vertices[rectangle_index], dtype=float)

        # Compute orientation of the clipping rectangle.
        # Positive means counter-clockwise. Negative means clockwise.
        signed_area = 0.0
        number_of_clipping_vertices = len(clipping_rectangle)

        for i in range(number_of_clipping_vertices):
            j = (i + 1) % number_of_clipping_vertices

            xi = clipping_rectangle[i, 0]
            yi = clipping_rectangle[i, 1]
            xj = clipping_rectangle[j, 0]
            yj = clipping_rectangle[j, 1]

            signed_area = signed_area + xi * yj - xj * yi

        if abs(signed_area) < tolerance:
            return np.empty((0, 2), dtype=float)

        # Clip the current common polygon by each edge of the clipping rectangle.
        for edge_index in range(number_of_clipping_vertices):
            next_edge_index = (edge_index + 1) % number_of_clipping_vertices

            edge_start = clipping_rectangle[edge_index]
            edge_end = clipping_rectangle[next_edge_index]
            edge_vector = edge_end - edge_start

            clipped_polygon = []

            if len(common_polygon) == 0:
                return np.empty((0, 2), dtype=float)

            previous_point = common_polygon[-1]
            previous_vector = previous_point - edge_start
            previous_cross = edge_vector[0] * previous_vector[1] - edge_vector[1] * previous_vector[0]

            if signed_area >= 0.0:
                previous_is_inside = previous_cross >= -tolerance
            else:
                previous_is_inside = previous_cross <= tolerance

            for current_point in common_polygon:
                current_vector = current_point - edge_start
                current_cross = edge_vector[0] * current_vector[1] - edge_vector[1] * current_vector[0]

                if signed_area >= 0.0:
                    current_is_inside = current_cross >= -tolerance
                else:
                    current_is_inside = current_cross <= tolerance

                # If the segment crosses the clipping edge, compute the intersection point.
                if current_is_inside != previous_is_inside:
                    segment_vector = current_point - previous_point
                    denominator = segment_vector[0] * edge_vector[1] - segment_vector[1] * edge_vector[0]

                    if abs(denominator) > tolerance:
                        q_minus_p = edge_start - previous_point
                        numerator = q_minus_p[0] * edge_vector[1] - q_minus_p[1] * edge_vector[0]
                        interpolation_factor = numerator / denominator
                        intersection_point = previous_point + interpolation_factor * segment_vector
                        clipped_polygon.append(intersection_point)

                if current_is_inside:
                    clipped_polygon.append(current_point)

                previous_point = current_point
                previous_is_inside = current_is_inside

            common_polygon = np.array(clipped_polygon, dtype=float)

            if len(common_polygon) < 3:
                return np.empty((0, 2), dtype=float)

    return common_polygon


# =============================================================================
# Plot functions
# =============================================================================
def plot_U(save_path: Path) -> None:
    vertices = get_U_vertices()

    fig, ax = plt.subplots(figsize=(6.0, 5.0))
    patch = Polygon(vertices, closed=True, edgecolor="navy", facecolor=(0.5, 0.5, 0.5, 0.2), linewidth=0.5)
    ax.add_patch(patch)

    ax.set_xlabel(r"$u_1 = \delta$ [rad]")
    ax.set_ylabel(r"$u_2 = a_x$ [m/s$^2$]")
    ax.set_title(r"Original input constraint set $U$")
    ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.6)
    ax.set_aspect("equal", adjustable="box")
    ax.autoscale_view()

    fig.savefig(save_path, bbox_inches="tight")
    plt.close(fig)


def plot_W(vx_values: np.ndarray, psi_values: np.ndarray, save_path: Path) -> None:
    vx_values = np.asarray(vx_values, dtype=float)
    psi_values = np.asarray(psi_values, dtype=float)

    fig, ax = plt.subplots(figsize=(7.5, 5.0))

    all_vertices = []

    # Draw all W rectangles first.
    for vx, psi in zip(vx_values.ravel(), psi_values.ravel()):
        vertices = get_W_vertices(float(vx), float(psi))
        all_vertices.append(vertices)

        patch = Polygon(vertices, closed=True, edgecolor="red", facecolor=(0.5, 0.5, 0.5, 0.2), linewidth=0.25, zorder=1)
        ax.add_patch(patch)

    # Compute and draw only the region shared by all W rectangles.
    common_intersection = get_common_intersection(all_vertices)

    if len(common_intersection) >= 3:
        common_patch = Polygon(common_intersection, closed=True, edgecolor="none", facecolor=(1.0, 1.0, 0.0), linewidth=0.0, zorder=2)
        ax.add_patch(common_patch)

    # Draw the red outlines again so the yellow region does not cover the borders.
    for vertices in all_vertices:
        outline_patch = Polygon(vertices, closed=True, edgecolor="red", facecolor="none", linewidth=0.5, zorder=3)
        ax.add_patch(outline_patch)

    ax.set_xlabel(r"$\nu_1$")
    ax.set_ylabel(r"$\nu_2$")
    ax.set_title(r"Virtual input constraint set $W$")
    ax.grid(True, linestyle="--", linewidth=0.5, alpha=0.6)
    ax.set_aspect("equal", adjustable="box")

    if all_vertices:
        stacked = np.vstack(all_vertices)
        margin_x = 0.08 * max(1.0, np.ptp(stacked[:, 0]))
        margin_y = 0.08 * max(1.0, np.ptp(stacked[:, 1]))
        ax.set_xlim(stacked[:, 0].min() - margin_x, stacked[:, 0].max() + margin_x)
        ax.set_ylim(stacked[:, 1].min() - margin_y, stacked[:, 1].max() + margin_y)

    fig.savefig(save_path, bbox_inches="tight")
    plt.close(fig)



OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

plot_U(OUTPUT_DIR / "U_constraint_set.svg")
plot_W(vx_array, psi_array, OUTPUT_DIR / "W_constraint_set.svg")

print(f"Saved figures to: {OUTPUT_DIR}")

