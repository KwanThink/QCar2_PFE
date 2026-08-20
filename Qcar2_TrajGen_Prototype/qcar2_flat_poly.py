#!/usr/bin/env python3
"""QCar2 flatness trajectory in a TP1ex31-style script.

This version keeps only the useful flatness outputs for the QCar2 bicycle model:
- state reference: x, y, theta
- input reference: v, phi
- steering-rate reference: phi_dot

QCar2 bicycle model:
    x_dot     = v cos(theta)
    y_dot     = v sin(theta)
    theta_dot = v/L * tan(phi)

Flat output:
    z = [x, y]^T
"""

from pathlib import Path

import matplotlib.pyplot as plt
import numpy as np


# -----------------------------------------------------------------------------
# Parameters
# -----------------------------------------------------------------------------
L = 0.25725              # wheelbase [m]
DT = 0.02                # sampling time [s]
PHI_MAX = 0.5236         # steering limit [rad]
PHI_DOT_MAX = 2.0        # steering-rate limit [rad/s]
# Result folder is created inside the folder containing this script.
TRAJGEN_DIR = Path(__file__).resolve().parent
OUTPUT_DIR = TRAJGEN_DIR / "generated_qcar2_flatness_poly"


# -----------------------------------------------------------------------------
# Initial and final conditions (edit here)
# -----------------------------------------------------------------------------
xi = np.array([-4.135, -1.015, -0.3805063771])   # [x0, y0, theta0]
ui = np.array([0.35, 0.0])                       # [v0, phi0]
xf = np.array([-0.385,  1.485,  1.4464413322])   # [xf, yf, thetaf]
uf = np.array([0.35, 0.0])                       # [vf, phif]
T = 30.0                                         # total time [s]


# -----------------------------------------------------------------------------
# Construct the matrix M * a = b
# -----------------------------------------------------------------------------
M = np.array(
    [
        [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0],
        [1, T, T**2, T**3, T**4, T**5, 0, 0, 0, 0, 0, 0],
        [0, 1, 2*T, 3*T**2, 4*T**3, 5*T**4, 0, 0, 0, 0, 0, 0],
        [0, 0, 2, 6*T, 12*T**2, 20*T**3, 0, 0, 0, 0, 0, 0],
        [0, 0, 0, 0, 0, 0, 1, T, T**2, T**3, T**4, T**5],
        [0, 0, 0, 0, 0, 0, 0, 1, 2*T, 3*T**2, 4*T**3, 5*T**4],
        [0, 0, 0, 0, 0, 0, 0, 0, 2, 6*T, 12*T**2, 20*T**3],
    ],
    dtype=float,
)

xdd0 = -(ui[0] ** 2 / L) * np.tan(ui[1]) * np.sin(xi[2])
ydd0 = +(ui[0] ** 2 / L) * np.tan(ui[1]) * np.cos(xi[2])
xddf = -(uf[0] ** 2 / L) * np.tan(uf[1]) * np.sin(xf[2])
yddf = +(uf[0] ** 2 / L) * np.tan(uf[1]) * np.cos(xf[2])

b = np.array(
    [
        xi[0],
        ui[0] * np.cos(xi[2]),
        xdd0,
        xi[1],
        ui[0] * np.sin(xi[2]),
        ydd0,
        xf[0],
        uf[0] * np.cos(xf[2]),
        xddf,
        xf[1],
        uf[0] * np.sin(xf[2]),
        yddf,
    ],
    dtype=float,
)

a = np.linalg.solve(M, b)


# -----------------------------------------------------------------------------
# Flat output and derivatives
# -----------------------------------------------------------------------------
tt = np.arange(DT, T + 1e-12, DT)

z1 = a[0] + a[1]*tt + a[2]*tt**2 + a[3]*tt**3 + a[4]*tt**4 + a[5]*tt**5
z2 = a[6] + a[7]*tt + a[8]*tt**2 + a[9]*tt**3 + a[10]*tt**4 + a[11]*tt**5

zd1 = a[1] + 2*a[2]*tt + 3*a[3]*tt**2 + 4*a[4]*tt**3 + 5*a[5]*tt**4
zd2 = a[7] + 2*a[8]*tt + 3*a[9]*tt**2 + 4*a[10]*tt**3 + 5*a[11]*tt**4

zdd1 = 2*a[2] + 6*a[3]*tt + 12*a[4]*tt**2 + 20*a[5]*tt**3
zdd2 = 2*a[8] + 6*a[9]*tt + 12*a[10]*tt**2 + 20*a[11]*tt**3

zddd1 = 6*a[3] + 24*a[4]*tt + 60*a[5]*tt**2
zddd2 = 6*a[9] + 24*a[10]*tt + 60*a[11]*tt**2


# -----------------------------------------------------------------------------
# State and input reference from flatness
# -----------------------------------------------------------------------------
v_ref = np.hypot(zd1, zd2)
v_safe = np.maximum(v_ref, 1e-9)

theta = np.arctan2(zd2, zd1)

N = zd1 * zdd2 - zd2 * zdd1
kappa = N / np.maximum(v_safe**3, 1e-9)
phi_ref = np.arctan(L * kappa)

N_dot = zd1 * zddd2 - zd2 * zddd1
v3_dot = 3.0 * v_safe * (zd1 * zdd1 + zd2 * zdd2)
kappa_dot = (N_dot * v_safe**3 - N * v3_dot) / np.maximum(v_safe**6, 1e-9)
phi_dot_ref = (L * kappa_dot) / (1.0 + (L * kappa)**2)

xi_ref = np.vstack((z1, z2, theta))
u_ref = np.vstack((v_ref, phi_ref))


# -----------------------------------------------------------------------------
# Save CSV
# -----------------------------------------------------------------------------
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
output_csv = OUTPUT_DIR / "qcar2_flatness_poly.csv"

csv_data = np.column_stack(
    (
        tt,
        xi_ref[0],
        xi_ref[1],
        xi_ref[2],
        u_ref[0],
        u_ref[1],
        phi_dot_ref,
    )
)

np.savetxt(
    output_csv,
    csv_data,
    delimiter=",",
    header="t,x,y,theta,v,phi,phi_dot",
    comments="",
)


# -----------------------------------------------------------------------------
# Plots
# -----------------------------------------------------------------------------
plt.figure()
plt.plot(xi_ref[0], xi_ref[1])
plt.plot([xi[0], xf[0]], [xi[1], xf[1]], "ro")
plt.xlabel("x [m]")
plt.ylabel("y [m]")
plt.title("QCar2 trajectory")
plt.grid(True)
plt.axis("equal")
plt.tight_layout()
plt.savefig(OUTPUT_DIR / "trajectory_xy.png", dpi=180)

plt.figure()
plt.plot(tt, xi_ref[2])
plt.xlabel("t [s]")
plt.ylabel("theta [rad]")
plt.title("Heading angle")
plt.grid(True)
plt.tight_layout()
plt.savefig(OUTPUT_DIR / "heading.png", dpi=180)

plt.figure()
plt.plot(tt, u_ref[0])
plt.xlabel("t [s]")
plt.ylabel("v [m/s]")
plt.title("Speed")
plt.grid(True)
plt.tight_layout()
plt.savefig(OUTPUT_DIR / "speed.png", dpi=180)

plt.figure()
plt.plot(tt, u_ref[1])
plt.axhline(PHI_MAX, linestyle="--")
plt.axhline(-PHI_MAX, linestyle="--")
plt.xlabel("t [s]")
plt.ylabel("phi [rad]")
plt.title("Steering angle")
plt.grid(True)
plt.tight_layout()
plt.savefig(OUTPUT_DIR / "steering.png", dpi=180)

plt.figure()
plt.plot(tt, phi_dot_ref)
plt.axhline(PHI_DOT_MAX, linestyle="--")
plt.axhline(-PHI_DOT_MAX, linestyle="--")
plt.xlabel("t [s]")
plt.ylabel("phi_dot [rad/s]")
plt.title("Steering rate")
plt.grid(True)
plt.tight_layout()
plt.savefig(OUTPUT_DIR / "steering_rate.png", dpi=180)

# plt.show()


print("Generated TP1-style QCar2 trajectory")
print(f"Output folder: {OUTPUT_DIR}")
print(f"Max speed       : {np.max(v_ref):.4f} m/s")
print(f"Max |phi|       : {np.max(np.abs(phi_ref)):.4f} rad")
print(f"Max |phi_dot|   : {np.max(np.abs(phi_dot_ref)):.4f} rad/s")
print(f"CSV file        : {output_csv}")
