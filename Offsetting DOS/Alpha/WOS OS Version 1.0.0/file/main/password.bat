@echo off
title WOSOS - PassWord
:passch
echo WOSOS SignIN
echo.
for /f %%a in (USER.txt) do (
    set user="%%a"
)
for /f %%b in (PASS.txt) do (
    set OKPass="%%b"
)
for /f %%c in (version.txt) do (
    set version="%%c"
)
goto passchecking
:passchecking
echo Version %version%
echo User %user%
echo.
goto checking

:checking
set /p setPass="PassWord?:"
if ""%setPass%"" == "%OKPass%" (goto OK)
cls
goto passch
:OK
echo PASS OK
echo Wait,,,
powershell start-sleep 1
call main.bat