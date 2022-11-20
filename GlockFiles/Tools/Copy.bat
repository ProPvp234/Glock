@echo off
cls
call GlockFiles\Tools\Text.bat
echo %gray%[%cyan%1%gray%] - Copy Name
echo %gray%[%cyan%2%gray%] - File Finder
echo %gray%[%cyan%3%gray%] - Drive Clone
set /p w=%gray%[%white%/%gray%] - 
if %w%==1 goto Name
if %w%==2 goto FileFinder
if %w%==3 goto DriveClone
:Name
cls
call GlockFiles\Tools\Text.bat
set /p drive=%gray%[%white%/%gray%] - Drive: %gray%
set /p name=%gray%[%white%/%gray%] - File Name: %gray%
del /q GlockFiles\FileFinder\* > nul
for /f "delims=" %%a in ('dir "%drive%:\%name%.*" /s/b ^| find /i ".*"') do (
copy "%%a" "GlockFiles\FileFinder"
)
start GlockFiles\FileFinder
goto main


:FileFinder
del /q GlockFiles\FileFinder\*
cls
call GlockFiles\Tools\Text.bat
set /p enlargement=%gray%[%white%/%gray%] - Enlargement: %gray%
set /p drive=%gray%[%white%/%gray%] - Drive: %gray%
md "GlockFiles\FileFinder"
for /f "delims=" %%a in ('dir "%drive%:\*.%enlargement%" /s/b ^| find /i ".%enlargement%"') do (
copy "%%a" "GlockFiles\FileFinder"
)
start GlockFiles\FileFinder
pause
goto Main

:DriveClone
echo %gray%[%cyan%1%gray%] - Format
echo %gray%[%cyan%2%gray%] - WithOut Format
set /p w=%gray%[%white%/%gray%] - 
if %w%==1 goto DriveCloneFormat
if %w%==2 goto DriveCloneNoFormat
:DriveCloneNoFormat
cls
call GlockFiles\Tools\Text.bat
set /p inputdrive=%gray%[%white%/%gray%] - InPut Drive: %gray%
set /p outputdrive=%gray%[%white%/%gray%] - OutPut Drive: %gray%
for /f "delims=" %%a in ('dir "%inputdrive%:\*" /s/b ^') do (
xcopy "%%a" "%outputdrive%:\" /s /e /h /i /c /y
)
pause
goto main
:DriveCloneFormat
cls
call GlockFiles\Tools\Text.bat
set /p inputdrive=%gray%[%white%/%gray%] - InPut Drive: %gray%
set /p outputdrive=%gray%[%white%/%gray%] - OutPut Drive: %gray%
del %outputdrive%:\
for /f "delims=" %%a in ('dir "%inputdrive%:\*" /s/b ^') do (
xcopy "%%a" "%outputdrive%:\" /s /e /h /i /c /y
)
pause