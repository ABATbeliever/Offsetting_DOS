cd ..
echo Do you want to delete the log?
set /p cmd="Y/N>"
if "%cmd%" == "Y" (del memory.log
echo.
echo Success)
if "%cmd%" == "y" (del memory.log
echo.
echo Success)
cd command