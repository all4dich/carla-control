# CARLA Simulator Scripts

This repository contains Python scripts for interacting with the CARLA simulator. These scripts allow you to run autonomous vehicles, manually control vehicles, and load different maps.

## Files

### `main.py`

This is a sample Python script created by the PyCharm IDE. It is not used by any of the other scripts in this repository.

### `automatic_control.py`

This script runs an autonomous vehicle in the CARLA simulator. It uses a Python-defined agent to control the vehicle.

**Usage:**

```bash
python automatic_control.py [options]
```

**Options:**

| Argument | Description |
|---|---|
| `-v`, `--verbose` | Print debug information. |
| `--host <H>` | IP of the host server (default: 127.0.0.1). |
| `-p`, `--port <P>` | TCP port to listen to (default: 2000). |
| `--res <WIDTHxHEIGHT>` | Window resolution (default: 1280x720). |
| `--sync` | Synchronous mode execution. |
| `--filter <PATTERN>` | Actor filter (default: "vehicle.*"). |
| `--generation <G>` | Restrict to certain actor generation (values: "2","3","All" - default: "All"). |
| `-l`, `--loop` | Sets a new random destination upon reaching the previous one (default: False). |
| `-a`, `--agent <AGENT>` | Select which agent to run (choices: "Behavior", "Basic", "Constant", default: "Behavior"). |
| `-b`, `--behavior <BEHAVIOR>` | Choose one of the possible agent behaviors (choices: "cautious", "normal", "aggressive", default: "normal"). |
| `-s`, `--seed <SEED>`| Set seed for repeating executions (default: None). |

**Recording On/Off:**

Click 'r' key to start the screen recording after launching automatic_control.py.

**Python package for the CARLA Python API:**

You have to download https://github.com/carla-simulator/carla/tree/ue5-dev/PythonAPI/carla in the local. After downloading, change this line with your local path.

```python
# ==============================================================================
# -- Add PythonAPI for release mode --------------------------------------------
# ==============================================================================
try:
    sys.path.append(os.path.dirname(os.path.dirname(os.path.abspath(__file__))) + '/carla')
except IndexError:
    pass
```

**Carla 0.9.15  and 0.10.0:**

This script is compatible with both Carla 0.9.15 and 0.10.0. However, it is strongly recommended to create separate Python virtual environments for each Carla version to avoid dependency conflicts. Before running the scripts, ensure you have activated the appropriate virtual environment that matches the Carla version you intend to use. This will help maintain a stable and predictable development setup.

### `manual_control.py`

This script allows you to manually control a vehicle in the CARLA simulator using a keyboard.

**Usage:**

```bash
python manual_control.py [options]
```

**Keyboard Controls:**

| Key | Action |
|---|---|
| ARROWS or WASD | Throttle, brake, and steer. |
| Q | Toggle reverse. |
| Space | Hand-brake. |
| P | Toggle autopilot. |
| M | Toggle manual transmission. |
| ,/. | Gear up/down. |
| CTRL + W | Toggle constant velocity mode at 60 km/h. |
| L | Toggle next light type. |
| SHIFT + L | Toggle high beam. |
| Z/X | Toggle right/left blinker. |
| I | Toggle interior light. |
| TAB | Change sensor position. |
| ` or N | Next sensor. |
| [1-9] | Change to sensor [1-9]. |
| G | Toggle radar visualization. |
| C | Change weather (Shift+C reverse). |
| Backspace | Change vehicle. |
| O | Open/close all doors of vehicle. |
| T | Toggle vehicle's telemetry. |
| V | Select next map layer (Shift+V reverse). |
| B | Load current selected map layer (Shift+B to unload). |
| R | Toggle recording images to disk. |
| CTRL + R | Toggle recording of simulation. |
| CTRL + P | Start replaying last recorded simulation. |
| CTRL + + | Increments the start time of the replay by 1 second (+SHIFT = 10 seconds). |
| CTRL + - | Decrements the start time of the replay by 1 second (+SHIFT = 10 seconds). |
| F1 | Toggle HUD. |
| H/? | Toggle help. |
| ESC | Quit. |

**Options:**

| Argument | Description |
|---|---|
| `-v`, `--verbose` | Print debug information. |
| `--host <H>` | IP of the host server (default: 127.0.0.1). |
| `-p`, `--port <P>` | TCP port to listen to (default: 2000). |
| `-a`, `--autopilot` | Enable autopilot. |
| `--res <WIDTHxHEIGHT>` | Window resolution (default: 1280x720). |
| `--filter <PATTERN>` | Actor filter (default: "vehicle.*"). |
| `--generation <G>` | Restrict to certain actor generation (values: "2","3","All" - default: "All"). |
| `--rolename <NAME>` | Actor role name (default: "hero"). |
| `--gamma <GAMMA>` | Gamma correction of the camera (default: 1.0). |
| `--sync` | Activate synchronous mode execution. |

### `map_load.py`

This script connects to the CARLA server and loads the "FMTC" map.

**Usage:**

```bash
python map_load.py
```
