@echo off
setlocal

REM Check if there's commit message
if "%~1"=="" (
    echo Please input message
    echo Usage: push.bat "Commit Message"
    exit /b 1
)

REM 
set "commitMessage=%~1"

REM 
git add .
git commit -m "%commitMessage%"
git push

endlocal
