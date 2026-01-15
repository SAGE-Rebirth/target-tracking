# YOLOv12 Safe Multi-Target Turret System

This project implements a **Safety-First Human Tracking System** designed for robotics simulation, surveillance, and automated camera control. It uses YOLOv11/v12 for detection and a **PID-controlled virtual turret** engine.

## Key Features

### 1. Safe & Ethical Tracking
*   **Human Only**: Strictly filters for Class 0 (Person). All other objects are ignored.
*   **Safe Zones**: Pre-defined regions (e.g., edges of the screen, doorways) where tracking is automatically disabled.
*   **Passive Logic**: No weapon systems or firing logic. Purely for tracking and monitoring.

### 2. Virtual Turret Simulation
*   **PID Controller**: Implements Proportional-Integral-Derivative control logic to smooth out camera/turret movements.
*   **Physics Limits**: Simulates mechanical constraints like max pan/tilt speed and rotation range.
*   **Servo Output**: Calculates real-time `Pan` and `Tilt` angles ready for microcontroller integration.

### 3. Multi-Target Intelligence
*   **ByteTrack Integration**: Maintains consistent IDs for multiple people even when they cross paths.
*   **Auto-Priority**: Automatically locks onto the "primary" threat (closest to center) while keeping track of secondary targets.
*   **HUD**: Displays real-time telemetry, target IDs, and lock status.

## Usage

1.  **Install Dependencies**:
    ```bash
    pip install -r requirements.txt
    ```

2.  **Run the System**:
    ```bash
    run_yolo12.bat
    ```

## Controls
*   **Q**: Quit the application.

## System Architecture

*   **`TurretController`**: Handles the math for smooth motion (PID) and angle limits.
*   **`TargetManager`**: Filters unsafe targets and selects the primary lock based on proximity.
*   **`main()`**: Orchestrates the vision loop and HUD rendering.
