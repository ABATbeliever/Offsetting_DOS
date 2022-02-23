@echo off
echo.
echo SafeMODE
echo.
echo Currently logged on in safe mode.
echo.
echo SAFE Bash Version:1.4
echo.
goto 0
:main
set enptycode=%random%
set cmd=%enptycode%
title WOSOS - SafeMode
set /p cmd="SAFEMode>"
if "%cmd%" == "%enptycode%" (goto main)
if "%cmd%" == "0" (goto 0)
if "%cmd%" == "1" (exit)
if "%cmd%" == "2" (goto 2)
if "%cmd%" == "3" (goto 3)
if "%cmd%" == "4" (cls)
if "%cmd%" == "5" (goto 5)
goto main
:0
echo.
echo 0:Show this help
echo 1:Shutdown
echo 2:Filecheck
echo 3:NormalBoot
echo 4:CLS
echo 5:Version
echo.
goto main
:2
echo.
set e=0
if exist "main.bat" (
  echo ^[Found^]main.bat
) else (
  echo ^[NotFound^]main.bat
  set e=1
)
if exist "PASS.txt" (
  echo ^[Found^]PASS.txt
) else (
  echo ^[NotFound^]PASS.txt
  set e=1
)
if exist "password.bat" (
  echo ^[Found^]password.bat
) else (
  echo ^[NotFound^]password.bat
  set e=1
)
if exist "safeWOS.bat" (
  echo ^[Found^]safeWOS.bat
) else (
  echo ^[NotFound^]safeWOS.bat
  set e=1
)
if exist "USER.txt" (
  echo ^[Found^]USER.txt
) else (
  echo ^[NotFound^]USER.txt
  set e=1
)
if exist "version.txt" (
  echo ^[Found^]version.txt
) else (
  echo ^[NotFound^]favo.bat
  set e=1
)
if exist "WOS_OS.bat" (
  echo ^[Found^]WOS_OS.bat
) else (
  echo ^[NotFound^]WOS_OS.bat
  set e=1
)
echo.
cd command
if exist "cls.bat" (
  echo ^[Found^]cls.bat
) else (
  echo ^[NotFound^]cls.bat
  set e=1
)
if exist "help.bat" (
  echo ^[Found^]help.bat
) else (
  echo ^[NotFound^]help.bat
  set e=1
)
if exist "information.bat" (
  echo ^[Found^]information.bat
) else (
  echo ^[NotFound^]information.bat
  set e=1
)
if exist "version.bat" (
  echo ^[Found^]version.bat
) else (
  echo ^[NotFound^]version.bat
  set e=1
)
echo.
if %e% == 0 (echo All File Found
echo You can Boot Normal Mode
cd ..
echo.
goto main
) else (
  echo I can't find my important Command file
cd ..
echo.
goto main
)
:3
powershell start-sleep 0
if exist "WOS_OS.bat" (
  echo.
  echo ^[Found^]WOS_OS.bat
  powershell start-sleep 2
  call WOS_OS.bat
  echo.
) else (
  echo.
  echo ^[NotFound^]WOS_OS.bat
  echo.
  goto main
)
:5
echo.
cd command
if exist "version.bat" (
  echo.
  echo ^[Found^]version.bat
  echo.
  call version.bat
  echo.
) else (
  echo.
  echo ^[NotFound^]version.bat
  echo.
)
echo.
cd ..
goto main