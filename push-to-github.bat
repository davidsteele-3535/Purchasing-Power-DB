@echo off
cd /d "%~dp0"

where git >nul 2>&1
if errorlevel 1 (
  echo Git not found. Install from https://git-scm.com/download/win then run this again.
  pause
  exit /b 1
)

echo === Purchasing Power - Push to GitHub ===
echo.

if not exist .git (
  echo Initializing repository...
  git init
  git remote add origin https://github.com/davidsteele-3535/Purchasing-Power-DB.git
  echo.
)

echo Adding all files...
git add .
git status
echo.

echo Committing...
git commit -m "Purchasing Power dashboard: full codebase including CSV data"
if errorlevel 1 (
  echo Nothing to commit or commit failed. Continuing...
)

echo.
echo Pushing to main...
git branch -M main
git push -u origin main

echo.
echo Done.
pause
