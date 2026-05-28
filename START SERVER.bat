@echo off
title FixHive Local Server
echo.
echo  Starting FixHive local server...
echo  Your browser will open automatically.
echo.
powershell -ExecutionPolicy Bypass -File "%~dp0serve.ps1"
pause
