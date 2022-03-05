@echo off
cd ..
echo.
echo Offsetting DOS Config V12.7
echo.
echo Select the settings you want to change.
echo.
echo Press C to Exit Config.
:main
echo.
echo 0:Display menu
echo 1:Log Date
echo 2:Font Color
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
if "%cmd%" == "2" (goto 2)
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
del memory.log
echo Nope>>memory.log)
if "%LOG%" == "false" (echo true>>makelog.dll)
echo Rewrite OK!
echo.
goto mainz

:2
echo.
set col=White
if exist "colg.dll" (
  set col=Green
)
if exist "colb.dll" (
  set col=Blue
)
if exist "colr.dll" (
  set col=Red
)
if exist "coly.dll" (
  set col=Yelow
)
echo Now,The color is set to "%col%".
goto 2.1
:2.1
set enptycode=%random%
set cmd=%enptycode%
echo.
echo C:EXIT
echo 1:Green
echo 2:Blue
echo 3:Red
echo 4:Yelow
echo 5:While
echo.
set /p cmd="Color?>"
if "%cmd%" == "%enptycode%" (goto 2.1)
if "%cmd%" == "1" (
del colg.dll
del colb.dll
del colr.dll
del coly.dll
echo g>>colg.dll
cls
color A
echo OK
echo.)
if "%cmd%" == "2" (
del colg.dll
del colb.dll
del colr.dll
del coly.dll
echo g>>colb.dll
cls
color 9
echo OK
echo.)
if "%cmd%" == "3" (
del colg.dll
del colb.dll
del colr.dll
del coly.dll
echo g>>colr.dll
cls
color C
echo OK
echo.)
if "%cmd%" == "4" (
del colg.dll
del colb.dll
del colr.dll
del coly.dll
echo g>>coly.dll
cls
color E
echo OK
echo.)
if "%cmd%" == "5" (
del colg.dll
del colb.dll
del colr.dll
del coly.dll
echo g>>colg.dll
cls
echo OK
echo.)
if "%cmd%" == "c" (goto c)
if "%cmd%" == "C" (goto c)

goto 2

:c