@echo off
cls
call GlockFiles\Tools\Text.bat
set /p howmuch=%gray%[%white%/%gray%] - How Much: 
set /a g=1
:loopipspoofer
if %g%==%howmuch% goto main
set /a ran1=%random% %%255
set /a ran2=%random% %%255
set /a ran3=%random% %%255
set /a ran4=%random% %%255
echo.
echo %gray%[%magenta%?%gray%] - Scaning %ran1%.%ran2%.%ran3%.%ran4%
ping %ran1%.%ran2%.%ran3%.%ran4% -n 1 > nul | find "time" > nul
IF %errorlevel% EQU 0 goto worksipspoofer
echo %gray%[%red%-%gray%] - %ran1%.%ran2%.%ran3%.%ran4% Not Working
goto loopipspoofer
:worksipspoofer
set /a g=g+1
echo %gray%[%lightgreen%+%gray%] - %ran1%.%ran2%.%ran3%.%ran4% Working
goto loopipspoofer