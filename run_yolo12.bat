@echo off
echo ==========================================
echo      YOLOv12 MULTI-TARGET SYSTEM
echo ==========================================
echo.
echo [1/2] Checking Dependencies...
pip install ultralytics

echo.
echo [2/2] Launching System...
echo Press 'q' to quit the camera window.
echo.
py yolo12_target_master.py

if %errorlevel% neq 0 (
    echo.
    echo [ERROR] Execution Failed.
    echo Ensure you have a webcam connected and Python 3.10-3.12.
    pause
)
