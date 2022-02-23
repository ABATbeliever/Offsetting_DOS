echo.
echo WOS_OS File Checking
echo.
title WOSOS - FileCheck
set e=0
cd ..
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
if %e% == 0 (echo Major SystemFile Found
) else (
  echo I can't find my important file
)
powershell start-sleep 0
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
if %e% == 0 (echo Major Command File Found
) else (
  echo I can't find my important Command file
)
echo.

powershell start-sleep 0