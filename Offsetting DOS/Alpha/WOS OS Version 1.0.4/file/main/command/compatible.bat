@echo off
echo.
echo CompatibleMode V1.8
echo.
echo Do you want to run "MS-DOS(MicrosoftCMD)" compatible or "MicrosoftPowershell" compatible?
echo.
goto mainz
:mainz
set enptycode=%random%
set cmd=%enptycode%
set /p cmd="MS-DOS (M) or Powershell (P) or Cancel (C) :>"
if "%cmd%" == "%enptycode%" (goto mainz)
if "%cmd%" == "M" (cd c:\
goto m)
if "%cmd%" == "m" (cd c:\
goto m)
if "%cmd%" == "P" (cd c:\
goto p)
if "%cmd%" == "p" (cd c:\
goto p)
if "%cmd%" == "C" (goto c)
if "%cmd%" == "c" (goto c)
goto mainz
:m
echo.
echo Press C to Exit_Mode
echo.
goto m1
:m1
set enptycode=%random%
set cmd=%enptycode%
set /p cmd="MS-DOS_Mode>"
if "%cmd%" == "%enptycode%" (goto m1)
if "%cmd%" == "c" (goto c)
if "%cmd%" == "C" (goto c)
if "%cmd%" == "EXIT" (goto c)
if "%cmd%" == "exit" (goto c)
echo.
echo Start "%cmd%" In MS-DOS_Mode
echo.
%cmd%
goto m
:p
echo.
echo Press C to Exit_Mode
echo.
goto p2
:p2
set enptycode=%random%
set cmd=%enptycode%
set /p cmd="Powershell_Mode>"
if "%cmd%" == "%enptycode%" (goto p2)
if "%cmd%" == "c" (goto c)
if "%cmd%" == "C" (goto c)
if "%cmd%" == "EXIT" (goto c)
if "%cmd%" == "exit" (goto c)
echo.
echo Start "%cmd%" In Powershell_Mode
echo.
powershell %cmd%
goto p
:c