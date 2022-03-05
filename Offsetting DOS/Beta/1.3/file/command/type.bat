@echo off
:m
set enptycode=%random%
set cmd=%enptycode%
set /p cmd="type command Name>"
if "%cmd%" == "%enptycode%" (goto m)
echo.
type "%cmd%".bat