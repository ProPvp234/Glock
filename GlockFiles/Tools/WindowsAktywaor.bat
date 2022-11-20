@echo off
:Admin
cls
echo ==========&&choice /n /c YN /m "Czy plik ma uprawnienia administratora? [Y,N]?" & if errorlevel 2 goto exit) || (goto version)
:version
cls
echo.
echo.
echo.
echo                    Sprawdzanie wersji systemu
echo.
echo.
echo.
:: systeminfo | find "Microsoft Windows 10" >nul
:: IF %errorlevel% EQU 0 GOTO win1011
VER | find "10" > nul
IF %errorlevel% EQU 0 goto win1011

:: systeminfo | find "Microsoft Windows 11" >nul
:: IF %errorlevel% EQU 0 GOTO win1011
VER | find "11" > nul
IF %errorlevel% EQU 0 goto win1011


goto badwin
pause
:badwin
cls
echo.
echo                  Bledny windows
echo.
pause>nul
goto exit
:win1011
cls
echo.
systeminfo | find "OS Name"
echo.
echo %gray%[%cyan%1%gray%] - Home
echo %gray%[%cyan%2%gray%] - Home N
echo %gray%[%cyan%3%gray%] - Home Single Language
echo %gray%[%cyan%4%gray%] - Home Country Specific
echo %gray%[%cyan%5%gray%] - Professional(Pro)
echo %gray%[%cyan%6%gray%] - Professional N
echo %gray%[%cyan%7%gray%] - Education
echo %gray%[%cyan%8%gray%] - Education N
echo %gray%[%cyan%9%gray%] - Enterprise
echo %gray%[%cyan%0%gray%] - Enterprise N
set /p wybor=%gray%[%white%/%gray%] - 
if %wybor%==1 goto Home
if %wybor%==2 goto HomeN
if %wybor%==3 goto HomeSingleLanguage
if %wybor%==4 goto HomeCountrySpecific
if %wybor%==5 goto ProfessionalPro
if %wybor%==6 goto ProfessionalN
if %wybor%==7 goto Education
if %wybor%==8 goto EducationN
if %wybor%==9 goto Enterprise
if %wybor%==10 goto EnterpriseN
pause

:Home
cls
slmgr /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99
slmgr /skms kms8.msguides.com
slmgr /ato
goto end
:HomeN
cls
slmgr /ipk 3KHY7-WNT83-DGQKR-F7HPR-844BM
slmgr /skms kms8.msguides.com
slmgr /ato
goto end
:HomeSingleLanguage
cls
slmgr /ipk 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH
slmgr /skms kms8.msguides.com
slmgr /ato
goto end
:HomeCountrySpecific
cls
slmgr /ipk PVMJN-6DFY6-9CCP6-7BKTT-D3WVR
slmgr /skms kms8.msguides.com
slmgr /ato
goto end

:ProfessionalPro
cls
slmgr /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX
slmgr /skms kms8.msguides.com
slmgr /ato
goto end
:ProfessionalN
cls
slmgr /ipk MH37W-N47XK-V7XM9-C7227-GCQG9
slmgr /skms kms8.msguides.com
slmgr /ato
goto end

:Education
cls
slmgr /ipk NW6C2-QMPVW-D7KKK-3GKT6-VCFB2
slmgr /skms kms8.msguides.com
slmgr /ato
goto end
:EducationN
cls
slmgr /ipk 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ
slmgr /skms kms8.msguides.com
slmgr /ato
goto end

:Enterprise
cls
slmgr /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43
slmgr /skms kms8.msguides.com
slmgr /ato
goto end
:EnterpriseN
cls
slmgr /ipk DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4
slmgr /skms kms8.msguides.com
slmgr /ato
goto end

:end
goto main