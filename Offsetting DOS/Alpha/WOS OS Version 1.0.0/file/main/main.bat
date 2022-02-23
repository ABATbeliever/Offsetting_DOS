@echo off
cls
cd command
echo If you do not know the command, type "help"!
goto main

:main
echo.
title WOSOS - Main
set /p cmd="CMD?:"
if "%cmd%" == "exit" (goto exit)
if exist "%cmd%.bat" (
  echo.
  title WOSOS - %cmd%
  call "%cmd%.bat"
  powershell start-sleep 0
  echo.
  goto main
) else (
  echo.
  echo ^[Bad Command^]"%cmd%"
  echo.
  goto main
)
:exit
cls
title WOSOS - EXIT
echo.
echo 0:Cancel
echo 1:Shutdown
echo 2:Reboot
echo.
set /p choise="0 to 2:"
if "%choise%" == "0" (
cls
goto main
)
if "%choise%" == "1" (exit)
if "%choise%" == "2" (
cd ..
cd ..
cd ..
start Clickme.exe
powershell start-sleep 0
exit
)
goto exit