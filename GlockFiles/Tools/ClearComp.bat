@echo off
cls
call GlockFiles\Tools\Text.bat
echo %cyan%Deleating..%gray%
del /s /f /q c:\windows\temp\*.* &&del /s /f /q C:\WINDOWS\Prefetch &&del /s /f /q C:\Users\%username%\AppData\Local\Temp\*.* &&del /s /q c:\windows\tempor~1 &&del /s /q c:\windows\temp 
del /s /q c:\windows\tem &&del /s /q c:\windows\ff*.tmp &&del /s /q c:\windows\history &&del /s /q c:\windows\cookies &&del /s /q c:\windows\recent &&del /s /q c:\windows\spool\printers
echo %gray%[%green%+%gray%] - Deleated!
pause>nul
goto main