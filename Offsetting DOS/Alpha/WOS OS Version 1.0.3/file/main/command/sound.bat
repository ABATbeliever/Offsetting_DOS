set /p pitch="Pitch:"
set /p long="Long:"
powershell [console]::Beep(%pitch%, %long%)