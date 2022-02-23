@echo off
cls
echo WOSOS is Crashed
goto loop
:loop
powershell [console]::Beep(500, 9999999)
goto loop