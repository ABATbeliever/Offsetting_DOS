@echo off
title Offsetting DOS - PassWord
set try=5
set setPass=0
:passch
if %try% == 0 (goto exits)
echo Offsetting DOS SignIN
echo.
echo Day %date%
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
echo You have %try% number of attempts left.
goto checking

:checking
set /p setPass="PassWord?:"
if ""%setPass%"" == "%OKPass%" (goto OK)
set /a try=%try%-1
cls
goto passch

:exits
cls
title Offsetting DOS - Failed
echo The number of attempts has been exceeded.
set /p exit="Press Enter to shutdown "
exit

:OK
echo PASS OK
echo Wait,,,
powershell start-sleep 1
call main.bat