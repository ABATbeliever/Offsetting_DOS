@echo off
if exist "colg.dll" (
  color A
)
if exist "colb.dll" (
  color 9
)
if exist "colr.dll" (
  color C
)
if exist "coly.dll" (
  color E
)
cls
title Offsetting DOS File...
echo.
echo Please Wait
powershell start-sleep 2
cls
call password.bat