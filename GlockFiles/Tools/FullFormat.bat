@echo off
cls
call GlockFiles\Tools\Text.bat
set /p drive=%gray%[%white%/%gray%] - Drive: %gray%
format %drive%: /q /fs:ntfs
goto main