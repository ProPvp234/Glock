@echo off
cls
call GlockFiles\Tools\Text.bat
:command
echo.
set /p command=%lightcyan%%Username% %gray%@ %lightcyan%%cd%%gray%$ 
echo.
%command%
goto command