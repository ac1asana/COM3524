
@echo off
REM ============================
REM Run Teaching Tool Web Server on Windows with Docker
REM ============================

REM ---- CONFIG ----
set IMAGE_NAME=com3524

REM ---- BUILD IMAGE ----
echo Building Docker image...
docker build -t %IMAGE_NAME% .

REM ---- RUN CONTAINER ----
echo Running web app on http://127.0.0.1:5000 ...
docker run -it ^
    -p 5000:5000 ^                 
    %IMAGE_NAME% ^
    python3 run_tool.py

pause
