@echo off

cls
cd command
set count=0
echo If you do not know the command, type "list"!
goto main

:main
echo.
goto main1
:main1
cd %~dp0
set enptycode=%random%
set cmd=%enptycode%
set /a count=count+1
title Offsetting DOS - Main

set /p cmd="%count%>"

if "%cmd%" == "secret" (goto secret)

if exist "makelog.dll" (
  set LOG=true
) else (
  set LOG=false
)
cd command
if "%cmd%" == "%enptycode%" (goto main1)
if "%cmd%" == "exit" (goto exit)
if %LOG% == true (goto logt)
goto logf
:logt
if exist "%cmd%.bat" (
  echo.
  cd ..
  echo ***%date%\%time%***>>memory.log
  echo LineNumber:%count%>>memory.log
  echo Command:%cmd%>>memory.log
  echo.>>memory.log
  cd command
  title Offsetting DOS - %cmd%
  call "%cmd%.bat"
  powershell start-sleep 0
  echo.
  goto main
) else (
  echo BadCommand:"%cmd%"
  goto main1
)
:logf
if exist "%cmd%.bat" (
  echo.
  title Offsetting DOS - %cmd%
  call "%cmd%.bat"
  powershell start-sleep 0
  echo.
  goto main
) else (
  echo BadCommand:"%cmd%"
  goto main1
)
:exit
title Offsetting DOS - EXIT
echo.
set /p choise="Shutdown(S) or Reboot(R) or Calcel(c):"
if "%choise%" == "c" (
goto main
)
if "%choise%" == "C" (
goto main
)
if "%choise%" == "r" (goto rst)
if "%choise%" == "R" (goto rst)
if "%choise%" == "s" (goto shutdownst)
if "%choise%" == "S" (goto shutdownst)
goto exit

:shutdownst
exit

:secret
echo.
echo This command is not in the command folder, nor in the list command!
echo Strange, isn't it?
echo.
goto main1

:rst
cd ..
cd ..
dir
pause
start OffsettingDOS.bat
exit