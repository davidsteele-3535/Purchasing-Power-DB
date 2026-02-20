@echo off
cd /d "%~dp0"
echo Pushing to https://github.com/davidsteele-3535/Purchasing-Power-DB
echo.
git add -A
git status
git commit -m "Update dashboard" 2>nul || echo No changes to commit or already committed.
git push origin main
echo.
pause
