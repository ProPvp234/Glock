@echo off
mode con: cols=60 lines=50
cls
echo %cyan%                     .::.
echo %cyan%                  .:'  .:
echo %cyan%        ,MMM8$$$.:'   .:'
echo %cyan%       MMMMM88$$$$  .:'
echo %cyan%      MMMMM88$$$$$$:'
echo %cyan%      MMMMM88$$$$$$
echo %cyan%    .:MMMMM88$$$$$$
echo %cyan%  .:'  MMMMM$$$$$$
echo %cyan%.:'   .:'MMM$$$$$'
echo %cyan%:'  .:'
echo %cyan%'::'
echo.
set /p ip=%gray%[%white%/%gray%] - IP: %gray%
:piner
PING -n 1 %ip% | Find "TTL="
IF ERRORLEVEL 1 goto timeout
goto piner
:timeout
echo %gray%[%red%-%gray%] - Disconected!
goto piner