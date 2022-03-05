@echo off
echo Setting...
set v=2.26
set bfv=1.6
:mbr
cd %~dp0
title BootMenu Version %v%
cls
echo BootLoader Version %v%
echo.
echo 0:Shutdown
echo 1:Boot Offsetting DOS
echo 2:Boot from other file
echo.
goto main
:main
set cmd=enpty
set /p cmd="BootMenu?:>"
if "%cmd%" == "exit" (exit)
if "%cmd%" == "EXIT" (exit)
if "%cmd%" == "0" (exit)
if "%cmd%" == "1" (goto 1)
if "%cmd%" == "2" (goto 2)
goto main
:1
cd file
call "OFFsetting DOS.bat"
exit
:2
cls
echo BootFileSearch Version %bfv%
echo Please enter the absolute path(Do not include the file name).
set enptycode=%random%
set pass=%enptycode%
set /p pass="Pass:>"
if "%pass%" == "%enptycode%" (goto 2)
goto 3
:3
cd /d %pass%
cls
echo Select a file name(Don't put a .bat in there.)
set enptycode=%random%
echo.
dir /b *.bat
echo.
echo (Press R to return)
echo.
set /p pass="Name:>"
if "%pass%" == "%enptycode%" (goto 3)
if "%pass%" == "R" (goto 2)
if "%pass%" == "r" (goto 2)
call %pass%.bat
cls
echo Failed to load or terminated.
goto mbr