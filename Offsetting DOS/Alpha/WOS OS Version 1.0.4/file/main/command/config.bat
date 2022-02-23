@echo off
cd ..
echo.
echo MOFOS Config V12.4
echo.
echo Select the settings you want to change.
echo.
echo Press C to Exit Config.
:main
echo.
echo 0:Display menu
echo 1:Log Date
echo.
goto mainz
:mainz
set enptycode=%random%
set cmd=%enptycode%
set /p cmd="Choose Config>"
if "%cmd%" == "%enptycode%" (goto mainz)
if "%cmd%" == "C" (goto c)
if "%cmd%" == "c" (goto c)
if "%cmd%" == "EXIT" (goto c)
if "%cmd%" == "exit" (goto c)
if "%cmd%" == "0" (goto main)
if "%cmd%" == "1" (goto 1)
echo "%cmd%" not found
goto mainz

:1
echo.
if exist "makelog.dll" (
  set LOG=true
) else (
  set LOG=false
)
echo Now,The log is set to "%LOG%".
echo Do you want to change it?
goto 1.1
:1.1
set enptycode=%random%
set cmd=%enptycode%
echo.
set /p cmd="Y/N>"
if "%cmd%" == "Y" (goto 1.y)
if "%cmd%" == "y" (goto 1.y)
if "%cmd%" == "N" (echo.
goto mainz)
if "%cmd%" == "n" (echo.
goto mainz)
if "%cmd%" == "%enptycode%" (goto 1.1)
goto 1.1
:1.y
if "%LOG%" == "true" (del makelog.dll
del memory.log)
if "%LOG%" == "false" (echo true>>makelog.dll)
echo Rewrite OK!
echo.
goto mainz
:c