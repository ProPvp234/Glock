@echo off
cls
call GlockFiles\Tools\Text.bat
set /p file=%gray%[%white%/%gray%] - File: %gray%
cmd /min /C "set __COMPAT_LAYER=RUNASINVOKER && start "" ""%file%""