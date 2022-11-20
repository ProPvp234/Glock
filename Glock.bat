@echo off
call GlockFiles\Tools\colors.bat
:main
chcp 65001
cls
call GlockFiles\Tools\Text.bat
echo %gray%[%cyan%1%gray%] - Admin By Pass          %gray%[%cyan%11%gray%] - IP Pinger
echo %gray%[%cyan%2%gray%] - Alts                   %gray%[%cyan%12%gray%] - Terminal
echo %gray%[%cyan%3%gray%] - ClearComp              %gray%[%cyan%13%gray%] - null
echo %gray%[%cyan%4%gray%] - Copy                   %gray%[%cyan%14%gray%] - null
echo %gray%[%cyan%5%gray%] - Discord Tools          %gray%[%cyan%15%gray%] - null
echo %gray%[%cyan%6%gray%] - Full Format            %gray%[%cyan%16%gray%] - null
echo %gray%[%cyan%7%gray%] - MC Servers             %gray%[%cyan%17%gray%] - null
echo %gray%[%cyan%8%gray%] - Net Tools              %gray%[%cyan%18%gray%] - null
echo %gray%[%cyan%9%gray%] - IP Finder              %gray%[%cyan%19%gray%] - null
echo %gray%[%cyan%10%gray%] - Windows Aktywator      %gray%[%cyan%20%gray%] - null
set /p w=%gray%[%white%/%gray%] - 
if %w%==1 goto AdminByPass
if %w%==2 goto Alts
if %w%==3 goto ClearComp
if %w%==4 goto Copy
if %w%==5 goto DiscordTools
if %w%==6 goto FullFormat
if %w%==7 goto MCServers
if %w%==8 goto NetTools
if %w%==9 goto IPFinder
if %w%==10 goto WindowsAktywator
if %w%==11 goto IPPinger
if %w%==12 goto Terminal
:AdminByPass
cls
call GlockFiles\Tools\AdminByPass.bat
goto main
:Alts
cls
call GlockFiles\Tools\Alts.bat
goto main
:ClearComp
cls
call GlockFiles\Tools\ClearComp.bat
goto main
:Copy
cls
call GlockFiles\Tools\Copy.bat
goto main
:DiscordTools
cls
call GlockFiles\Tools\DiscordTools.bat
goto main
:FullFormat
cls
call GlockFiles\Tools\FullFormat.bat
goto main
:MCServers
cls
call GlockFiles\Tools\MCServers.bat
goto main
:NetTools
cls
call GlockFiles\Tools\NetTools.bat
goto main
:IPFinder
cls
call GlockFiles\Tools\Spoofer.bat
goto main
:WindowsAktywator
cls
call GlockFiles\Tools\WindowsAktywator.bat
goto main
:IPPinger
cls
call GlockFiles\Tools\IPPinger.bat
goto main
:Terminal
cls
call GlockFiles\Tools\Terminal.bat
goto main