@echo off
cd /d "%~dp0"
echo Starting dashboard server...
echo.
echo Open your browser to:  http://localhost:8080
echo.
echo Press Ctrl+C to stop the server when done.
echo.
start "" "http://localhost:8080"
py -m http.server 8080 2>nul || python -m http.server 8080
pause
