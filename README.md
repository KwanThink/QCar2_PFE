# QCar2 PFE Project

This repository contains QCar2 test programs, Quanser/QLabs examples, trajectory-generation tools, nonlinear MPC (NLMPC) simulations, flatness-based obstacle-avoidance MPC (OAMPC) simulations, virtual-input constraint visualization, and result-comparison scripts.

The README is intentionally focused on **how to set up, run, configure, and inspect the code**. For the theoretical derivations of the controllers, refer to the associated report/thesis documentation.

---

## 1. Overview

The main components of the repository are:

```text
QCar2_PFE/
├── Qcar2_Tutorials/              # Basic QLabs and physical-QCar2 examples
├── Qcar_Libraries/               # Quanser Python libraries used by the project
├── Qcar2_Functions/              # Helper functions for cameras, LiDAR and control
├── Qcar2_Mk1.py                  # QLabs sensor/control test
├── Qcar2_Mk2.py                  # Physical QCar2 sensor/control test
│
├── NLMPC_Mk1/                    # CasADi/IPOPT NLMPC tracking
├── NLMPC_Mk1Gu/                  # Gurobi NLMPC tracking
├── NLMPC_Mk2Gu/                  # Gurobi MINLP NLMPC with obstacles
├── OAMPC_Mk1/                    # Flat-coordinate Gurobi OAMPC tracking
├── OAMPC_Mk2/                    # Flat-coordinate MIQP OAMPC with obstacles
├── OAMPC_Mk2c/                   # OAMPC with local obstacle activation
│
├── Qcar2_TrajGen_Prototype/      # Standalone trajectory generators
├── Virtual_Constraint_Set/       # Physical/virtual input constraint plots
├── Mk1_Comparison/               # Result-comparison scripts
├── Final_Results/                # Selected archived results
├── requirements.txt
└── README.md
```

The six main controller simulations run with a **virtual QCar2 in Quanser Interactive Labs (QLabs)**. `NLMPC_Mk1` uses CasADi/IPOPT; the other five main controller projects use Gurobi and therefore require a working Gurobi installation/license.

---

## 2. Setup

### 2.1 Python requirement

After downloading the project, first make sure Python is installed.

- **Python 3.11 or newer** is required by the current dependency set.
- **Python 3.11.x is recommended and tested.**

Check the installed version with: py --version  or  python --version


### 2.2 Create the virtual environment

Open a terminal in the root folder `QCar2_PFE` and create a local virtual environment:

```bat
py -3.11 -m venv .venv
```

Activate it in Command Prompt:

```bat
.venv\Scripts\activate.bat
```

Install the Python packages required by the project:

```bat
pip install -r requirements.txt
```

The `.venv` folder is intentionally not distributed with the project. Each user should create a new environment on their own computer.

### 2.3 Quanser Interactive Labs and Quanser Python API

The QLabs simulations require **Quanser Interactive Labs** to be installed and running.

The repository contains the local Quanser libraries under:

```text
Qcar_Libraries/src/libraries/python
```

The simulation configuration files use this repository-relative library location, so the project can be moved to another folder or computer without using a fixed absolute path.

The local `qvl` package also depends on the Quanser Python/runtime modules supplied with the Quanser software installation. Before running QLabs code, verify that the Quanser environment is correctly installed on the computer.

QLabs must be started before running the QLabs launch scripts.

### 2.4 Gurobi

The following projects require Gurobi:

- `NLMPC_Mk1Gu`
- `NLMPC_Mk2Gu`
- `OAMPC_Mk1`
- `OAMPC_Mk2`
- `OAMPC_Mk2c`

`gurobipy` is included in `requirements.txt`, but a valid **Gurobi license** is also required.

A simple installation check is:

```bat
python -c "import gurobipy; print(gurobipy.gurobi.version())"
```

`NLMPC_Mk1` does not require a Gurobi license because it uses CasADi/IPOPT.

---

## 3. QCar2 Tutorials and Quanser Libraries

### 3.1 QCar2 tutorials

The `Qcar2_Tutorials` folder contains basic examples for both QLabs and the physical QCar2.

| File | Environment | Purpose |
|---|---|---|
| `QCar2_Keyboard_Control.py` | QLabs | Spawn and drive a virtual QCar2 using the keyboard. |
| `qcar2_001.py` | QLabs | Extended QLabs/QCar2 example including cameras and QLabs actors. |
| `qcar2_tutorial.py` | QLabs | Original-style QCar2 QLabs tutorial demonstrating QCar spawning, cameras and other QLabs features. |
| `QCar2_hardware_test_basic_io.py` | Physical QCar2 | Test basic QCar I/O and sensor values. |
| `QCar2_hardware_test_csi_cameras.py` | Physical QCar2 | Test the CSI cameras. |
| `QCar2_hardware_test_intelrealsense.py` | Physical QCar2 | Test the Intel RealSense camera. |
| `QCar2_hardware_test_rp_lidar_a2.py` | Physical QCar2 | Test the RP LiDAR A2. |

The QLabs tutorials require QLabs to be open before the script is executed. The physical-hardware tutorials are intended to run in the QCar2/Quanser hardware environment.

`qcar2_001.py` and `qcar2_tutorial.py` also import `pyqtgraph` and a Qt backend. These are tutorial-only dependencies and are not required by the main MPC simulations.

### 3.2 Quanser libraries used in this project

The most relevant libraries under `Qcar_Libraries/src/libraries/python` are:

- **`qvl` — Quanser Virtual Library:** used to communicate with QLabs, spawn a virtual QCar2, draw objects, obtain the simulated vehicle state, and send commands.
- **`pal` — Product Abstraction Layer:** used to communicate with physical Quanser hardware such as the QCar2, RealSense camera and LiDAR.

The `qvl` library is used by:
- `Qcar2_Mk1.py`
- `NLMPC_Mk1/src/qlabs_interface.py`
- `NLMPC_Mk1Gu/src/qlabs_interface.py`
- `NLMPC_Mk2Gu/src/qlabs_interface.py`
- `OAMPC_Mk1/src/qlabs_interface.py`
- `OAMPC_Mk2/src/qlabs_interface.py`
- `OAMPC_Mk2c/src/qlabs_interface.py`

The `pal` library is used by:
- `Qcar2_Mk2.py`
- `Qcar2_Functions/Qcar2_Camera.py`
- `Qcar2_Functions/Qcar2_LiDAR.py`

---

## 4. Basic QCar2 Test Programs

### 4.1 `Qcar2_Mk1.py` — QLabs test

**Environment:** Quanser Interactive Labs on the PC.

**Purpose:** basic manual-control and simulated-sensor test before using the MPC projects.

The script:

- connects to QLabs;
- spawns a virtual QCar2;
- allows keyboard control;
- streams the simulated CSI cameras;
- streams the simulated RealSense RGB/depth camera;
- reads and plots simulated LiDAR data.

Start QLabs, activate the virtual environment, then run from the project root:

```bat
python Qcar2_Mk1.py
```

Keyboard controls:

```text
Up / Down     forward / reverse
Left / Right  steering
Space         boost
Esc           quit
```

The principal test parameters are defined near the top of `Qcar2_Mk1.py`, including the QLabs host, actor ID, spawn pose and control-loop period.

### 4.2 `Qcar2_Mk2.py` — physical QCar2 test

**Environment:** physical QCar2/on-board Quanser Linux environment.

**Purpose:** hardware sensor and manual-control test.

The script checks the physical QCar2 connection, enables keyboard driving and tests the main sensor pipeline. In the current configuration it uses:

- Intel RealSense RGB/depth data;
- RP LiDAR data and live plotting;
- distance-based audible warning;
- physical QCar2 drive/steering commands.

CSI-camera support is present in the code but is disabled in the current `main()` configuration.

Run this script on the QCar2 computer from the project folder:

```bash
python3 Qcar2_Mk2.py
```

The principal test parameters are located near the top of `Qcar2_Mk2.py`, for example `LOOP_DT`, LiDAR range, RealSense range, RGB/depth enable flags and warning-distance settings.

---

## 5. Running the Simulations

### Common workflow

For the main QLabs simulations, the normal workflow is:

1. Activate `.venv`.
2. Modify the project YAML file if required.
3. Start QLabs.
4. If the trajectory parameters were changed, regenerate the trajectory by running that project's `qcar2_flat_bezier_Mk1.py`.
5. Run the corresponding `launch_*_qlabs.py` file.
6. Press **Enter** when the launch script asks to start tracking.
7. Inspect the automatically created result folder after the run.

> **Important:** editing `trajectory.waypoints`, `trajectory.segment_times`, the start/end heading, or another trajectory-generation parameter in the YAML file does not by itself update the saved reference CSV. Run `qcar2_flat_bezier_Mk1.py` again after changing trajectory parameters.

The launch scripts automatically create numbered run folders and save CSV logs, metrics and SVG figures. The active configuration is also copied into the result folder where supported.

---

### 5.1 NLMPC_Mk1

**Purpose:** single-track nonlinear MPC trajectory tracking using **CasADi/IPOPT**.

**Main files:**

```text
NLMPC_Mk1/
├── nlmpc_config_mk1.yaml
├── qcar2_flat_bezier_Mk1.py
├── launch_mk1_qlabs.py
├── generated_qcar2_flatness_bezier_Mk1/
├── results_mk1/
└── src/
```

#### Generate/update the reference trajectory

```bat
python NLMPC_Mk1/qcar2_flat_bezier_Mk1.py
```

Generated trajectory files are stored in:

```text
NLMPC_Mk1/generated_qcar2_flatness_bezier_Mk1/
```

#### Run the QLabs simulation

Start QLabs, then run:

```bat
python NLMPC_Mk1/launch_mk1_qlabs.py
```

#### Main adjustable parameters

Edit `NLMPC_Mk1/nlmpc_config_mk1.yaml`.

| YAML section/parameter | What it changes |
|---|---|
| `trajectory.sample_time` | Sampling interval of the generated reference. |
| `trajectory.psi_start`, `psi_end` | Start and final heading of the reference. |
| `trajectory.start_speed`, `end_speed` | Boundary reference speeds. |
| `trajectory.waypoints` | Cartesian path waypoints. |
| `trajectory.segment_times` | Travel time assigned to each trajectory segment. |
| `nlmpc.N` | Prediction horizon. |
| `nlmpc.Ts` | MPC/control sampling period. |
| `nlmpc.wheelbase` | QCar2 wheelbase used by the vehicle model. |
| `nlmpc.constraints` | Limits on `vx`, steering angle `delta`, and acceleration `ax`. |
| `nlmpc.weights.Q` | State-tracking weights for `[X, Y, psi, vx]`. |
| `nlmpc.weights.R` | Input weights for `[delta, ax]`. |
| `nlmpc.weights.P` | Terminal-state weights. |
| `nlmpc.solver` | IPOPT iteration/tolerance/failure settings. |
| `tracking` | Start/goal position, heading and speed tolerances. |
| `qlabs.qcar.spawn` | Initial virtual-QCar2 pose. |

#### Results

Results are created under:

```text
NLMPC_Mk1/results_mk1/run_Mk1_<number>/
```

To modify the generated result plots, edit:

```text
NLMPC_Mk1/src/result_logger.py
```

---

### 5.2 NLMPC_Mk1Gu

**Purpose:** Mk1 single-track NLMPC trajectory tracking using **Gurobi**.

**Main files:**

```text
NLMPC_Mk1Gu/
├── nlmpc_config_mk1gu.yaml
├── qcar2_flat_bezier_Mk1.py
├── launch_mk1gu_qlabs.py
├── generated_qcar2_flatness_bezier_Mk1/
├── generated_gurobi_nlmpc_solver/
├── results/
└── src/
```

#### Generate/update the reference trajectory

```bat
python NLMPC_Mk1Gu/qcar2_flat_bezier_Mk1.py
```

#### Run the QLabs simulation

```bat
python NLMPC_Mk1Gu/launch_mk1gu_qlabs.py
```

#### Main adjustable parameters

Edit `NLMPC_Mk1Gu/nlmpc_config_mk1gu.yaml`.

| YAML section/parameter | What it changes |
|---|---|
| `trajectory.*` | Reference sampling, boundary conditions, waypoints and segment times. |
| `nlmpc.N`, `nlmpc.Ts` | Prediction horizon and control sampling period. |
| `nlmpc.wheelbase` | QCar2 wheelbase used by the vehicle model. |
| `nlmpc.constraints` | Speed, steering and acceleration limits. |
| `nlmpc.weights.Q`, `R`, `P` | State, input and terminal weights. |
| `nlmpc.solver` | Gurobi output, nonlinear optimization, iteration, tolerance and failure-handling settings. |
| `tracking` | Start/goal tolerances and start-speed logic. |
| `qlabs.qcar.spawn` | Initial virtual-QCar2 pose. |

#### Results

Results are created under:

```text
NLMPC_Mk1Gu/results/run_Mk1Gu_<number>/
```

To modify the generated result plots, edit:

```text
NLMPC_Mk1Gu/src/result_logger.py
```

---

### 5.3 NLMPC_Mk2Gu

**Purpose:** Gurobi-based **global MINLP NLMPC** with obstacle-avoidance constraints.

**Main files:**

```text
NLMPC_Mk2Gu/
├── nlmpc_config_mk2gu.yaml
├── obstacle_config_mk2gu.yaml
├── qcar2_flat_bezier_Mk1.py
├── launch_mk2gu_qlabs.py
├── generated_qcar2_flatness_bezier_Mk1/
├── generated_gurobi_nlmpc_solver/
├── results/
└── src/
```

#### Generate/update the reference trajectory

```bat
python NLMPC_Mk2Gu/qcar2_flat_bezier_Mk1.py
```

#### Run the QLabs simulation

```bat
python NLMPC_Mk2Gu/launch_mk2gu_qlabs.py
```

#### Main adjustable parameters

Controller settings are in `NLMPC_Mk2Gu/nlmpc_config_mk2gu.yaml`.

| YAML section/parameter | What it changes |
|---|---|
| `trajectory.*` | Reference waypoints, times and boundary conditions. |
| `nlmpc.N`, `nlmpc.Ts` | Prediction horizon and control period. |
| `nlmpc.wheelbase` | QCar2 wheelbase used by the vehicle model. |
| `nlmpc.constraints` | Physical limits. |
| `nlmpc.weights.Q`, `R`, `P` | Tracking/control/terminal weights. |
| `nlmpc.solver` | Gurobi output, template and failure-handling settings. |
| `obstacle_avoidance.M` | Big-M value used by the obstacle formulation. |
| `obstacle_avoidance.gamma` | Obstacle safety/enlargement parameter used by the formulation. |
| `obstacle_avoidance.slack_weight` | Penalty applied to obstacle-constraint slack. |
| `tracking` | Start and final tracking tolerances. |
| `qlabs.qcar.spawn` | Initial virtual-QCar2 pose. |

Obstacle geometry is edited in:

```text
NLMPC_Mk2Gu/obstacle_config_mk2gu.yaml
```

For each obstacle, the main fields are:

```yaml
loc:   [x, y, z]
rot:   [roll, pitch, yaw]
scale: [sx, sy, sz]
color: [r, g, b]
type:  cube
```

#### Results

Results are created under:

```text
NLMPC_Mk2Gu/results/run_ObsAv_Mk2Gu_<number>/
```

To modify the generated result plots, edit:

```text
NLMPC_Mk2Gu/src/result_logger.py
```

---

### 5.4 OAMPC_Mk1

**Purpose:** flat-coordinate Gurobi OAMPC/FLMPC tracking baseline using virtual inputs and physical-input constraints.

**Main files:**

```text
OAMPC_Mk1/
├── oampc_config_mk1.yaml
├── qcar2_flat_bezier_Mk1.py
├── launch_oampc_mk1_qlabs.py
├── generated_qcar2_flatness_bezier_Mk1/
├── generated_oampc_solver/
├── results/
└── src/
```

#### Generate/update the reference trajectory

```bat
python OAMPC_Mk1/qcar2_flat_bezier_Mk1.py
```

#### Run the QLabs simulation

```bat
python OAMPC_Mk1/launch_oampc_mk1_qlabs.py
```

#### Main adjustable parameters

Edit `OAMPC_Mk1/oampc_config_mk1.yaml`.

| YAML section/parameter | What it changes |
|---|---|
| `trajectory.*` | Reference trajectory definition. |
| `oampc.N`, `oampc.Ts` | Prediction horizon and control period. |
| `oampc.wheelbase` | QCar2 wheelbase used by the vehicle model. |
| `oampc.epsilon` | Numerical/singularity protection used by the flat-coordinate formulation. |
| `oampc.Q` | Flat-output tracking weights. |
| `oampc.R` | Virtual-input weights. |
| `oampc.constraints` | Physical speed, steering and acceleration limits. |
| `oampc.solver` | Gurobi output/failure/template options. |
| `tracking` | Initial/goal tracking tolerances. |
| `qlabs.qcar.spawn` | Initial virtual-QCar2 pose. |

#### Results

Results are created under:

```text
OAMPC_Mk1/results/run_ObsAv_Mk1_<number>/
```

To modify the generated result plots, edit:

```text
OAMPC_Mk1/src/result_logger.py
```

---

### 5.5 OAMPC_Mk2

**Purpose:** flat-coordinate **MIQP OAMPC** with explicitly configured obstacles.

**Main files:**

```text
OAMPC_Mk2/
├── oampc_config_mk2.yaml
├── obstacle_config_mk2.yaml
├── qcar2_flat_bezier_Mk1.py
├── launch_oampc_mk2_qlabs.py
├── generated_qcar2_flatness_bezier_Mk1/
├── generated_oampc_solver/
└── src/
```

#### Generate/update the reference trajectory

```bat
python OAMPC_Mk2/qcar2_flat_bezier_Mk1.py
```

#### Run the QLabs simulation

```bat
python OAMPC_Mk2/launch_oampc_mk2_qlabs.py
```

#### Main adjustable parameters

Controller settings are in `OAMPC_Mk2/oampc_config_mk2.yaml`.

| YAML section/parameter | What it changes |
|---|---|
| `trajectory.*` | Reference waypoints, segment times and boundary conditions. |
| `oampc.N`, `oampc.Ts` | Prediction horizon and control period. |
| `oampc.wheelbase` | QCar2 wheelbase used by the vehicle model. |
| `oampc.epsilon` | Flat-coordinate numerical protection. |
| `oampc.Q`, `oampc.R` | Tracking and virtual-input weights. |
| `oampc.constraints` | Physical QCar2 input/state limits. |
| `oampc.solver` | Gurobi output, template and failure-handling settings. |
| `obstacle_avoidance.M` | Big-M value. |
| `obstacle_avoidance.gamma` | Obstacle safety/enlargement parameter. |
| `obstacle_avoidance.slack_weight` | Obstacle-slack penalty. |
| `tracking.goal_position_tolerance` | End-of-trajectory stopping tolerance. |
| `qlabs.qcar.spawn` | Initial virtual-QCar2 pose; adjust it if the trajectory starting pose is changed. |

Obstacle positions, orientations and dimensions are edited in:

```text
OAMPC_Mk2/obstacle_config_mk2.yaml
```

#### Results

Results are created under:

```text
OAMPC_Mk2/results/run_ObsAv_Mk2_<number>/
```

To modify the generated result plots, edit:

```text
OAMPC_Mk2/src/result_logger.py
```

---

### 5.6 OAMPC_Mk2c

**Purpose:** OAMPC Mk2 extended to larger multi-obstacle scenes using **local obstacle activation** so that only a limited subset of nearby/relevant obstacles is active in the optimization problem.

**Main files:**

```text
OAMPC_Mk2c/
├── oampc_config_mk2c.yaml
├── obstacle_config_mk2c.yaml
├── qcar2_flat_bezier_Mk1.py
├── launch_oampc_mk2c_qlabs.py
├── generated_qcar2_flatness_bezier_Mk1/
├── generated_oampc_solver/
├── results/
└── src/
```

#### Generate/update the reference trajectory

```bat
python OAMPC_Mk2c/qcar2_flat_bezier_Mk1.py
```

#### Run the QLabs simulation

```bat
python OAMPC_Mk2c/launch_oampc_mk2c_qlabs.py
```

#### Main adjustable parameters

Edit `OAMPC_Mk2c/oampc_config_mk2c.yaml`.

| YAML section/parameter | What it changes |
|---|---|
| `trajectory.*` | Multi-segment reference trajectory. |
| `oampc.N`, `oampc.Ts` | Prediction horizon and control period. |
| `oampc.wheelbase` | QCar2 wheelbase used by the vehicle model. |
| `oampc.epsilon` | Numerical/singularity protection used by the flat-coordinate formulation. |
| `oampc.Q`, `oampc.R` | Tracking and virtual-input weights. |
| `oampc.constraints` | Physical speed/steering/acceleration limits. |
| `oampc.solver` | Gurobi output, template and failure-handling settings. |
| `obstacle_avoidance.M` | Big-M value. |
| `obstacle_avoidance.gamma` | Obstacle safety/enlargement parameter. |
| `obstacle_avoidance.slack_weight` | Slack penalty. |
| `obstacle_avoidance.activation.radius` | Radius used to search for nearby obstacles. |
| `obstacle_avoidance.activation.field_of_view` | Angular field of view used by obstacle activation. |
| `obstacle_avoidance.activation.max_active_obstacles` | Maximum number of obstacles simultaneously included in the OCP. |
| `obstacle_avoidance.activation.deactive_distance` | Distance margin used when deactivating obstacles. |
| `tracking.goal_position_tolerance` | Final stopping tolerance. |
| `qlabs.qcar.spawn` | Initial virtual-QCar2 pose; adjust it if the trajectory starting pose is changed. |

The obstacle scene itself is defined in:

```text
OAMPC_Mk2c/obstacle_config_mk2c.yaml
```

Edit each obstacle's `loc`, `rot`, `scale`, `color` and `type` to change the environment.

#### Results

Results are created under:

```text
OAMPC_Mk2c/results/run_ObsAv_Mk2c_<number>/
```

To modify the generated result plots, edit:

```text
OAMPC_Mk2c/src/result_logger.py
```

---

### 5.7 Qcar2_TrajGen_Prototype

This folder contains three standalone trajectory-generation prototypes. They do not require QLabs; they can be run directly with Python and save their results in generated subfolders next to the scripts.

#### 5.7.1 `qcar2_flat_bezier_Mk1.py`

Run:

```bat
python Qcar2_TrajGen_Prototype/qcar2_flat_bezier_Mk1.py
```

**Model/formulation:**

```text
state x = [X, Y, psi, vx]^T
input u = [delta, ax]^T
flat output z = [X, Y]^T
```

It generates a **piecewise degree-5 Bezier** trajectory.

Main parameters are located near the top of the file:

- `LWB`, `DT`
- `DELTA_MAX`, `AX_MAX`
- `WAYPOINTS`
- `THETA_START`, `THETA_END`
- `SEGMENT_TIMES`
- automatic segment-time parameters when manual times are not supplied

Results are saved in:

```text
Qcar2_TrajGen_Prototype/generated_qcar2_flatness_bezier_Mk1/
```

The folder contains the generated reference CSV, Bezier control points, computed waypoint data, segment times and diagnostic plots.

#### 5.7.2 `qcar2_flat_bezier_Mk2.py`

Run:

```bat
python Qcar2_TrajGen_Prototype/qcar2_flat_bezier_Mk2.py
```

**Model/formulation:**

```text
state x = [x, y, theta]^T
input u = [v, omega_s]^T
steering angle = varphi
flat output z = [x, y]^T
```

It generates a **piecewise degree-7 Bezier** trajectory and uses derivatives up to the order required to recover steering-angle/steering-rate quantities.

Main parameters near the top of the file are:

- `L`, `DT`
- `VARPHI_MAX`, `OMEGA_S_MAX`
- `WAYPOINTS`
- `THETA_START`, `THETA_END`
- `SEGMENT_TIMES`

Results are saved in:

```text
Qcar2_TrajGen_Prototype/generated_qcar2_flatness_bezier_Mk2/
```

including the generated trajectory CSV, degree-7 Bezier control points, computed waypoints, segment times and diagnostic plots.

#### 5.7.3 `qcar2_flat_poly.py`

Run:

```bat
python Qcar2_TrajGen_Prototype/qcar2_flat_poly.py
```

**QCar2 kinematic bicycle model:**

```text
x_dot     = v cos(theta)
y_dot     = v sin(theta)
theta_dot = v/L tan(phi)
```

with:

```text
state x = [x, y, theta]^T
input u = [v, phi]^T
flat output z = [x, y]^T
```

The script also computes the steering-rate reference `phi_dot`.

Unlike the two piecewise Bezier generators, this script builds a single quintic polynomial from an initial condition to a final condition over a specified total time.

Main editable parameters are:

```python
L
DT
PHI_MAX
PHI_DOT_MAX
xi = [x0, y0, theta0]
ui = [v0, phi0]
xf = [xf, yf, thetaf]
uf = [vf, phif]
T
```

Results are saved in:

```text
Qcar2_TrajGen_Prototype/generated_qcar2_flatness_poly/
```

including `qcar2_flatness_poly.csv` and plots for trajectory, heading, speed, steering angle and steering rate.

---

### 5.8 Virtual Constraint Set

The script:

```text
Virtual_Constraint_Set/plot_W_set.py
```

visualizes the physical input constraint set `U` and the corresponding flat/virtual-input constraint set `W`.

Run:

```bat
python Virtual_Constraint_Set/plot_W_set.py
```

The main parameters are defined near the top of the file:

```text
delta_min, delta_max   steering limits
ax_min, ax_max         longitudinal acceleration limits
Lwb                    wheelbase
vx_array               speed value(s) used to generate W
psi_array              heading value(s) used to generate W
```

`vx_array` and `psi_array` must contain corresponding values. If multiple pairs are supplied, the script draws multiple `W` sets and their common intersection.

Default outputs are stored in:

```text
Virtual_Constraint_Set/W_set/
├── U_constraint_set.svg
└── W_constraint_set.svg
```

---

### 5.9 Mk1_Comparison

`Mk1_Comparison` contains post-processing scripts for comparing saved controller runs. These scripts do not run QLabs; they read existing CSV result folders and generate comparison figures and solve-time summaries.

#### `compare_Mk1.py`

This script is intended for the Mk1 NMPC-versus-flatness-based comparison.

Before running, edit the run names at the top of:

```text
Mk1_Comparison/compare_Mk1.py
```

The main selections are:

```python
NMPC_RUN_NAME
FLMPC_RUN_NAME
NMPC_PROJECT_FOLDER
FLMPC_PROJECT_FOLDER
REFERENCE_SOURCE
```

The expected default structure is:

```text
NLMPC_Mk1Gu/results/<NMPC_RUN_NAME>/
OAMPC_Mk1/results/<FLMPC_RUN_NAME>/
```

Run:

```bat
python Mk1_Comparison/compare_Mk1.py
```

Outputs are saved in:

```text
Mk1_Comparison/comp_results/
```

Typical outputs include trajectory, state, state-error, control, input-error, tracking-error and solve-time comparison plots plus `solve_time_summary.csv` and `solve_time_summary.txt`.

#### `compare_Mk2.py`

`compare_Mk2.py` is a more generic comparison tool. It automatically detects compatible CSV files from their columns and can compare two result folders even when their filenames differ.

You may either edit:

```python
RUN_A_PATH
RUN_B_PATH
REFERENCE_SOURCE
OUTPUT_FOLDER_NAME
```

at the top of the file, or pass the folders directly on the command line:

```bat
python Mk1_Comparison/compare_Mk2.py "path_to_run_A" "path_to_run_B" --output "comparison_output"
```

Relative paths are resolved from the `Mk1_Comparison` folder; absolute paths are also accepted.

With the default settings, outputs are written to:

```text
Mk1_Comparison/exp_results/
```

The script generates the same main families of comparison plots and summary statistics as `compare_Mk1.py`.

---

## Quick start example

For a first test, `NLMPC_Mk1` is the simplest main controller project because it does not require a Gurobi license.

From the root `QCar2_PFE` folder:

```bat
.venv\Scripts\activate
python NLMPC_Mk1/qcar2_flat_bezier_Mk1.py
```

Start QLabs, then run:

```bat
python NLMPC_Mk1/launch_mk1_qlabs.py
```

Press **Enter** when prompted. After the run, inspect:

```text
NLMPC_Mk1/results_mk1/run_Mk1_<number>/
```

To change the trajectory, horizon, sampling time, controller weights or physical constraints, edit:

```text
NLMPC_Mk1/nlmpc_config_mk1.yaml
```

and regenerate the trajectory if any `trajectory.*` parameters were changed.
