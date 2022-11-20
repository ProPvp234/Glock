@echo off
:dctm
cls
call GlockFiles\Tools\Text.bat
echo %gray%[%cyan%1%gray%] - Discord WebHook message send
echo %gray%[%cyan%2%gray%] - Discord Bot Setupper
echo %gray%[%cyan%3%gray%] - Discord WebHook Spammer
echo %gray%[%cyan%x%gray%] - Exit
set /p w=%gray%[%white%/%gray%] - 
if %w%==1 goto DiscordWebHookmessagesend
if %w%==2 goto DiscordBotSetupper
if %w%==3 goto DiscordWebHookSpammer
if %w%==x goto main


:DiscordWebHookSpammer
cls
call GlockFiles\Tools\Text.bat
set /p webhook=%gray%[%White%/%gray%] - WebHook Link: %gray%
set /p message=%gray%[%white%/%gray%] - Message: %gray%
set /p howmuch=%gray%[%white%/%gray%] - How much: %gray%
set /a howmuchold=howmuch
set /a howmuch=howmuch+1
set /a gen=1
:DiscordWebHookSpammerLoop
if %howmuch%==0 goto DiscordWebHookSpammerLoopEnd
set /a howmuch=howmuch-1
set messageSend=%gen%/%howmuchold% %message%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%messageSend%\"}" %webhook%
echo %gray%[%green%+%gray%] - Message Sended
set /a gen=gen+1
goto DiscordWebHookSpammerLoop
:DiscordWebHookSpammerLoopEnd
pause>nul
goto dctm


:DiscordBotSetupper
cls
call GlockFiles\Tools\Text.bat
echo %gray%[%cyan%1%gray%] - Python
echo %gray%[%cyan%2%gray%] - JavaScript (Not Working)
echo %gray%[%cyan%x%gray%] - Exit
set /p w=%gray%[%white%/%gray%] - 
if %w%==x goto dctm
if %w%==1 goto DiscordBotSetupperPython
:DiscordBotSetupperPython
cls
call GlockFiles\Tools\Text.bat
curl -o main.py https://pastebin.com/raw/EHyRmD5z
goto dctm



:DiscordWebHookmessagesend
cls
call GlockFiles\Tools\Text.bat
set /p webhook=%gray%[%White%/%gray%] - WebHook Link: %gray%
:DiscordWebHookmessagesendLoop
set /p message=%gray%[%white%/%gray%] - Message: %gray%
curl --silent --output /dev/null -i -H "Accept: application/json" -H "Content-Type:application/json" -X POST --data "{\"content\": \"%message%\"}" %webhook%
echo.
echo %gray%[%green%+%gray%] - Message Sended
echo %gray%[%magenta%?%gray%] - Message Content:
echo %message%
echo.
goto DiscordWebHookmessagesendLoop