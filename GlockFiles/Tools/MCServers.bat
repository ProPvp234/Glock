@echo off
cls
call GlockFiles\Tools\Text.bat
echo %gray%[%cyan%1%gray%] - Start
echo %gray%[%cyan%2%gray%] - Install
set /p w=%gray%[%white%/%gray%] - 
if %w%==1 goto Start
if %w%==2 goto Install
::https://download.getbukkit.org/spigot/spigot-1.19.2.jar


:Start
cls
call GlockFiles\Tools\Text.bat
echo %gray%[%cyan%1%gray%] - 1.19.2
echo %gray%[%cyan%2%gray%] - 1.18.2
set /p w=%gray%[%white%/%gray%] - 
if %w%==1 start GlockFiles\Servers\1192\start.bat
if %w%==2 start GlockFiles\Servers\1182\start.bat
goto main
:Install
cls
call GlockFiles\Tools\Text.bat
echo %gray%[%cyan%1%gray%] - 1.19.2
echo %gray%[%cyan%2%gray%] - 1.18.2
set /p w=%gray%[%white%/%gray%] - 
if %w%==1 goto 1192
if %w%==1 goto 1182
:1192
cls
call GlockFiles\Tools\Text.bat
if exist "GlockFiles\Servers\1192" echo %red%This Server Exist&&pause>nul&&goto main
echo %gray%[%magenta%?%gray%] - Downloading server.jar
md GlockFiles\Servers\1192
curl -o GlockFiles\Servers\1192\server.jar https://download.getbukkit.org/spigot/spigot-1.19.2.jar
echo %gray%[%green%+%gray%] - Downloaded server.jar
echo %gray%[%magenta%?%gray%] - Downloaded start.bat
echo @echo off>GlockFiles\Servers\1192\start.bat
echo java -Xms1024M -Xmx2048M -jar server.jar nogui>>GlockFiles\Servers\1192\start.bat
echo pause>>GlockFiles\Servers\1192\start.bat
echo %gray%[%green%+%gray%] - Downloaded start.bat
echo %gray%[%magenta%?%gray%] - Accepting eula
echo eula=true>GlockFiles\Servers\1192\eula.txt
start GlockFiles\Servers\1192\start.bat
goto main

:1182
cls
call GlockFiles\Tools\Text.bat
if exist "GlockFiles\Servers\1182" echo %red%This Server Exist&&pause>nul&&goto main
echo %gray%[%magenta%?%gray%] - Downloading server.jar
md GlockFiles\Servers\1182
curl -o GlockFiles\Servers\1182\server.jar https://download.getbukkit.org/spigot/spigot-1.18.2.jar
echo %gray%[%green%+%gray%] - Downloaded server.jar
echo %gray%[%magenta%?%gray%] - Downloaded start.bat
echo @echo off>GlockFiles\Servers\1182\start.bat
echo java -Xms1024M -Xmx2048M -jar server.jar nogui>>GlockFiles\Servers\1182\start.bat
echo pause>>GlockFiles\Servers\1182\start.bat
echo %gray%[%green%+%gray%] - Downloaded start.bat
echo %gray%[%magenta%?%gray%] - Accepting eula
echo eula=true>GlockFiles\Servers\1182\eula.txt
start GlockFiles\Servers\1182\start.bat