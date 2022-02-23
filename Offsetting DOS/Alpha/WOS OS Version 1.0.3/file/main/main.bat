@echo off
cls
cd command
set count=0
echo If you do not know the command, type "help"!
goto main

:main
echo.
goto main1
:main1
cd %~dp0
cd command
set enptycode=%random%
set cmd=%enptycode%
set /a count=count+1
title WOSOS - Main
set /p cmd="%count%>"
if "%cmd%" == "%enptycode%" (goto main1)
if "%cmd%" == "exit" (goto exit)
if exist "%cmd%.bat" (
  echo.
  cd ..
  echo ***%date%\%time%***>>memory.log
  echo LineNumber:%count%>>memory.log
  echo Command:%cmd%>>memory.log
  echo.>>memory.log
  cd command
  title WOSOS - %cmd%
  call "%cmd%.bat"
  powershell start-sleep 0
  echo.
  goto main
) else (
  echo BadCommand:"%cmd%"
  goto main1
)

:exit
title WOSOS - EXIT
echo.
set /p choise="Shutdown(S) or Calcel(c):"
if "%choise%" == "c" (
goto main
)
if "%choise%" == "C" (
goto main
)
if "%choise%" == "s" (goto shutdownst)
if "%choise%" == "S" (goto shutdownst)
goto exit

:shutdownst
cd ..
echo ***%date%\%time%***>>memory.log
echo LineNumber:%count%>>memory.log
echo Command:exit>>memory.log
echo.>>memory.log
exit