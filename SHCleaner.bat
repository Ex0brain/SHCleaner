@echo off
title SHCleaner v1.1.3 By SarahH12099

MODE 107,25

net session >nul 2>&1
if %errorLevel% == 2 (
	echo.
	echo Failure: Permission Denied, Please Run As Administrator
	echo.
	pause
	goto exit
)

:menu
cd \>nul 2>&1
cls
echo -----------------------------------------------------------------------------------------------------------
echo SHCleaner v1.1.3
echo Made By SarahH12099
echo -----------------------------------------------------------------------------------------------------------
echo.
echo Select A Tool
echo =============
echo.
echo [1] Delete Internet History/Cache/Cookies (Brave, Google Chrome, Internet Explorer)
echo [2] Application Cleanup
echo [3] Windows Cleanup
echo [4] Clear Clipboard
echo [5] Exit
echo.
set /p op=Run:
if %op%==1 goto 1
if %op%==2 goto 2
if %op%==3 goto 3
if %op%==4 goto 4
if %op%==5 goto exit
goto error

:1
cls
echo -----------------------------------------------------------------------------------------------------------
echo Delete Internet History/Cache/Cookies (Brave, Google Chrome, Internet Explorer)
echo -----------------------------------------------------------------------------------------------------------
echo.
echo Cleaning Internet History/Cache/Cookies

:: Brave
set BraveLocation="%localappdata%\BraveSoftware\Brave-Browser\User Data"
if exist "%BraveLocation%" (
taskkill /F /IM "brave.exe">nul 2>&1
for /d %%i in (%BraveLocation%\*) do (
cd "%%i">nul 2>&1
del /q /f "*.ldb">nul 2>&1
del /q /f "*.log">nul 2>&1
del /q /f "Cookies*.*">nul 2>&1
del /q /f "CURRENT*.*">nul 2>&1
del /q /f "Current Session*.*">nul 2>&1
del /q /f "Current Tabs*.*">nul 2>&1
del /q /f "DownloadMetadata*.*">nul 2>&1
del /q /f "Extension Cookies*.*">nul 2>&1
del /q /f "History*.*">nul 2>&1
del /q /f "Last Session*.*">nul 2>&1
del /q /f "Last Tabs*.*">nul 2>&1
del /q /f "LOCK*.*">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
del /q /f "MANIFEST*.*">nul 2>&1
del /q /f "Network Action*.*">nul 2>&1
del /q /f "Network Persistent State*.*">nul 2>&1
del /q /f "QuotaManager*.*">nul 2>&1
del /q /f "Shortcuts*.*">nul 2>&1
del /q /f "Top Sites*.*">nul 2>&1
del /q /f "Visited Links*.*">nul 2>&1
del /q /f "Web Data*.*">nul 2>&1
if exist "AutofillStrikeDatabase" (
cd "AutofillStrikeDatabase">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Cache" (
cd "Cache">nul 2>&1
del /q /s /f "*.*">nul 2>&1
FOR /D %%p IN ("*.*") DO rmdir "%%p" /s /q>nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Code Cache" (
cd "Code Cache">nul 2>&1
del /q /s /f "*.*">nul 2>&1
FOR /D %%p IN ("*.*") DO rmdir "%%p" /s /q>nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Extension Rules" (
cd "Extension Rules">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Extension State" (
cd "Extension State">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "File System\Origins" (
cd "File System\Origins">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Local Extension Settings" (
cd "Local Extension Settings">nul 2>&1
del /q /s /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Local Storage\leveldb" (
cd "Local Storage\leveldb">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Platform Notifications" (
cd "Platform Notifications">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Service Worker\Database" (
cd "Service Worker\Database">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Session Storage" (
cd "Session Storage">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "shared_proto_db" (
cd "shared_proto_db">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "shared_proto_db\metadata" (
cd "shared_proto_db\metadata">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Site Characteristics Database" (
cd "Site Characteristics Database">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Sync Data\LevelDB" (
cd "Sync Data\LevelDB">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "VideoDecodeStats" (
cd "VideoDecodeStats">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
cd \>nul 2>&1
)>nul 2>&1
)>nul 2>&1

:: Chrome
set ChromeLocation="%localappdata%\Google\Chrome\User Data"
if exist "%ChromeLocation%" (
taskkill /F /IM "chrome.exe">nul 2>&1
for /d %%i in (%ChromeLocation%\*) do (
cd "%%i">nul 2>&1
del /q /f "*.ldb">nul 2>&1
del /q /f "*.log">nul 2>&1
del /q /f "Cookies*.*">nul 2>&1
del /q /f "CURRENT*.*">nul 2>&1
del /q /f "Current Session*.*">nul 2>&1
del /q /f "Current Tabs*.*">nul 2>&1
del /q /f "DownloadMetadata*.*">nul 2>&1
del /q /f "Extension Cookies*.*">nul 2>&1
del /q /f "History*.*">nul 2>&1
del /q /f "Last Session*.*">nul 2>&1
del /q /f "Last Tabs*.*">nul 2>&1
del /q /f "LOCK*.*">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
del /q /f "MANIFEST*.*">nul 2>&1
del /q /f "Network Action*.*">nul 2>&1
del /q /f "Network Persistent State*.*">nul 2>&1
del /q /f "QuotaManager*.*">nul 2>&1
del /q /f "Shortcuts*.*">nul 2>&1
del /q /f "Top Sites*.*">nul 2>&1
del /q /f "Visited Links*.*">nul 2>&1
del /q /f "Web Data*.*">nul 2>&1
if exist "AutofillStrikeDatabase" (
cd "AutofillStrikeDatabase">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Cache" (
cd "Cache">nul 2>&1
del /q /s /f "*.*">nul 2>&1
FOR /D %%p IN ("*.*") DO rmdir "%%p" /s /q>nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Code Cache" (
cd "Code Cache">nul 2>&1
del /q /s /f "*.*">nul 2>&1
FOR /D %%p IN ("*.*") DO rmdir "%%p" /s /q>nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Extension Rules" (
cd "Extension Rules">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Extension State" (
cd "Extension State">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "File System\Origins" (
cd "File System\Origins">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Local Extension Settings" (
cd "Local Extension Settings">nul 2>&1
del /q /s /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Local Storage\leveldb" (
cd "Local Storage\leveldb">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Platform Notifications" (
cd "Platform Notifications">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Service Worker\Database" (
cd "Service Worker\Database">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Session Storage" (
cd "Session Storage">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "shared_proto_db" (
cd "shared_proto_db">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "shared_proto_db\metadata" (
cd "shared_proto_db\metadata">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Site Characteristics Database" (
cd "Site Characteristics Database">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Sync Data\LevelDB" (
cd "Sync Data\LevelDB">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "VideoDecodeStats" (
cd "VideoDecodeStats">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
cd \>nul 2>&1
)>nul 2>&1
)>nul 2>&1

:: Internet Explorer
taskkill /F /IM "iexplore.exe">nul 2>&1
RunDll32.exe InetCpl.cpl,ClearMyTracksByProcess 255

echo.
echo Done Cleaning Internet History/Cache/Cookies
:: Go Back To Menu
echo.
pause
goto menu

:2
cls
echo -----------------------------------------------------------------------------------------------------------
echo Application Cleanup
echo -----------------------------------------------------------------------------------------------------------
echo.
echo Doing Application Cleanup

:: Adobe 2020
if exist "%appdata%\Adobe\Audition\13.0\logs" (
taskkill /F /IM "Adobe Audition.exe">nul 2>&1
del /q /f "%appdata%\Adobe\Audition\13.0\logs\*.txt">nul 2>&1
)>nul 2>&1
if exist "%appdata%\Adobe\Adobe Photoshop 2020\Logs" (
taskkill /F /IM "photoshop.exe">nul 2>&1
del /q /f "%appdata%\Adobe\Adobe Photoshop 2020\Logs\*.log">nul 2>&1
)>nul 2>&1

:: Auslogics
if exist "%programdata%\Auslogics\Disk Defrag Ultimate\4.x\Reports" (
taskkill /F /IM "DiskDefragPro.exe">nul 2>&1
del /q /f "%programdata%\Auslogics\Disk Defrag Ultimate\4.x\Reports\*.xml">nul 2>&1
)>nul 2>&1
if exist "%programdata%\Auslogics\Driver Updater\1.x\Logs" (
taskkill /F /IM "DriverUpdater.exe">nul 2>&1
del /q /f "%programdata%\Auslogics\Driver Updater\1.x\Logs\*.log">nul 2>&1
)>nul 2>&1
if exist "%programdata%\Auslogics\Registry Cleaner\8.x\Reports" (
taskkill /F /IM "Integrator.exe">nul 2>&1
taskkill /F /IM "RegistryCleaner.exe">nul 2>&1
del /q /f "%programdata%\Auslogics\Registry Cleaner\8.x\Reports\*.xml">nul 2>&1
del /q /f "%programdata%\Auslogics\Registry Cleaner\8.x\Reports\*.html">nul 2>&1
)>nul 2>&1
if exist "%programdata%\Auslogics\Registry Defrag\12.x\Reports" (
taskkill /F /IM "Integrator.exe">nul 2>&1
taskkill /F /IM "RegistryDefrag.exe">nul 2>&1
del /q /f "%programdata%\Auslogics\Registry Defrag\12.x\Reports\*.xml">nul 2>&1
del /q /f "%programdata%\Auslogics\Registry Defrag\12.x\Reports\*.html">nul 2>&1
)>nul 2>&1
if exist "%programdata%\Auslogics\Windows Slimmer\2.x\Reports" (
taskkill /F /IM "Integrator.exe">nul 2>&1
taskkill /F /IM "WindowsSlimmer.exe">nul 2>&1
del /q /f "%programdata%\Auslogics\Windows Slimmer\2.x\Reports\*.xml">nul 2>&1
del /q /f "%programdata%\Auslogics\Windows Slimmer\2.x\Reports\*.html">nul 2>&1
)>nul 2>&1

:: Discord
if exist "%appdata%\Discord" (
taskkill /F /IM "Discord.exe">nul 2>&1
)>nul 2>&1
if exist "%appdata%\Discord\Cache" (
rmdir "%appdata%\Discord\Cache" /s /q>nul 2>&1
)>nul 2>&1
if exist "%appdata%\Discord\GPUCache" (
rmdir "%appdata%\Discord\GPUCache" /s /q>nul 2>&1
)>nul 2>&1

:: Epic Games
if exist "%localappdata%\EpicGamesLauncher" (
taskkill /F /IM "EpicGamesLauncher.exe">nul 2>&1
)>nul 2>&1
if exist "%localappdata%\EpicGamesLauncher\Saved\Logs" (
rmdir "%localappdata%\EpicGamesLauncher\Saved\Logs" /s /q>nul 2>&1
)>nul 2>&1
if exist "%localappdata%\EpicGamesLauncher\Saved\webcache" (
rmdir "%localappdata%\EpicGamesLauncher\Saved\webcache" /s /q>nul 2>&1
)>nul 2>&1

:: eM Client
if exist "%appdata%\eM Client\Logs" (
taskkill /F /IM "MailClient.exe">nul 2>&1
del /q /f "%appdata%\eM Client\Logs\*.log">nul 2>&1
)>nul 2>&1

:: FileZilla
if exist "%appdata%\FileZilla\recentservers.xml" (
taskkill /F /IM "filezilla.exe">nul 2>&1
del /q /f "%appdata%\FileZilla\recentservers.xml">nul 2>&1
)>nul 2>&1

:: Git
if exist "%systemdrive%\Users\%username%\.bash_history" (
del /q /f "%systemdrive%\Users\%username%\.bash_history">nul 2>&1
)>nul 2>&1

:: Minecraft
if exist "%appdata%\.minecraft\logs" (
taskkill /F /IM "MinecraftLauncher.exe">nul 2>&1
del /q /s /f "%appdata%\.minecraft\logs\*.*">nul 2>&1
FOR /D %%p IN ("%appdata%\.minecraft\logs\*.*") DO rmdir "%%p" /s /q>nul 2>&1
)>nul 2>&1

:: PDFelement 7
if exist "%appdata%\Wondershare\PDFelement 7\Configs\HistoryDatas.dat" (
taskkill /F /IM "PDFelement.exe">nul 2>&1
del /q /f "%appdata%\Wondershare\PDFelement 7\Configs\HistoryDatas.dat">nul 2>&1
)>nul 2>&1
if exist "%appdata%\Wondershare\PDFelement 7\Log" (
taskkill /F /IM "PDFelement.exe">nul 2>&1
del /q /f "%appdata%\Wondershare\PDFelement 7\Log\*.log">nul 2>&1
)>nul 2>&1

:: Popcorn-Time
set PopcornTimeLocation="%localappdata%\Popcorn-Time\User Data"
if exist "%PopcornTimeLocation%" (
taskkill /F /IM "Popcorn-Time.exe">nul 2>&1
for /d %%i in (%PopcornTimeLocation%\*) do (
cd "%%i">nul 2>&1
del /q /f "*.ldb">nul 2>&1
del /q /f "*.log">nul 2>&1
del /q /f "Cookies*.*">nul 2>&1
del /q /f "CURRENT*.*">nul 2>&1
del /q /f "Current Session*.*">nul 2>&1
del /q /f "Current Tabs*.*">nul 2>&1
del /q /f "DownloadMetadata*.*">nul 2>&1
del /q /f "Extension Cookies*.*">nul 2>&1
del /q /f "History*.*">nul 2>&1
del /q /f "Last Session*.*">nul 2>&1
del /q /f "Last Tabs*.*">nul 2>&1
del /q /f "LOCK*.*">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
del /q /f "MANIFEST*.*">nul 2>&1
del /q /f "Network Action*.*">nul 2>&1
del /q /f "Network Persistent State*.*">nul 2>&1
del /q /f "QuotaManager*.*">nul 2>&1
del /q /f "Shortcuts*.*">nul 2>&1
del /q /f "Top Sites*.*">nul 2>&1
del /q /f "Visited Links*.*">nul 2>&1
del /q /f "Web Data*.*">nul 2>&1
if exist "AutofillStrikeDatabase" (
cd "AutofillStrikeDatabase">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Cache" (
cd "Cache">nul 2>&1
del /q /s /f "*.*">nul 2>&1
FOR /D %%p IN ("*.*") DO rmdir "%%p" /s /q>nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Code Cache" (
cd "Code Cache">nul 2>&1
del /q /s /f "*.*">nul 2>&1
FOR /D %%p IN ("*.*") DO rmdir "%%p" /s /q>nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Extension Rules" (
cd "Extension Rules">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Extension State" (
cd "Extension State">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "File System\Origins" (
cd "File System\Origins">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Local Extension Settings" (
cd "Local Extension Settings">nul 2>&1
del /q /s /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Local Storage\leveldb" (
cd "Local Storage\leveldb">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Platform Notifications" (
cd "Platform Notifications">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Service Worker\Database" (
cd "Service Worker\Database">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Session Storage" (
cd "Session Storage">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "shared_proto_db" (
cd "shared_proto_db">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "shared_proto_db\metadata" (
cd "shared_proto_db\metadata">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "Site Characteristics Database" (
cd "Site Characteristics Database">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
if exist "Sync Data\LevelDB" (
cd "Sync Data\LevelDB">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../../>nul 2>&1
)>nul 2>&1
if exist "VideoDecodeStats" (
cd "VideoDecodeStats">nul 2>&1
del /q /f "LOG*.*">nul 2>&1
cd ../>nul 2>&1
)>nul 2>&1
cd \>nul 2>&1
)>nul 2>&1
)>nul 2>&1

:: Process Lasso
if exist "%appdata%\ProcessLasso\logs" (
taskkill /F /IM "ProcessLasso.exe">nul 2>&1
del /q /f "%appdata%\ProcessLasso\logs\*.log">nul 2>&1
)>nul 2>&1

:: qBittorrent
if exist "%localappdata%\qBittorrent\logs" (
taskkill /F /IM "qbittorrent.exe">nul 2>&1
del /q /f "%localappdata%\qBittorrent\logs\*.log">nul 2>&1
)>nul 2>&1

echo.
echo Done Application Cleanup
:: Go Back To Menu
echo.
pause
goto menu

:3
cls
echo -----------------------------------------------------------------------------------------------------------
echo Windows Cleanup
echo -----------------------------------------------------------------------------------------------------------
echo.
echo Doing Windows Cleanup

:: Local Temp
if exist "%temp%" (
del /q /s /f "%temp%\*.*">nul 2>&1
FOR /D %%p IN ("%temp%\*.*") DO rmdir "%%p" /s /q>nul 2>&1
)>nul 2>&1

:: Recycle Bin
if exist "C:\$Recycle.Bin" (
rd /q /s C:\$Recycle.Bin>nul 2>&1
)>nul 2>&1
if exist "D:\$Recycle.Bin" (
rd /q /s D:\$Recycle.Bin>nul 2>&1
)>nul 2>&1
if exist "E:\$Recycle.Bin" (
rd /q /s E:\$Recycle.Bin>nul 2>&1
)>nul 2>&1

:: Windows Event Logs
if exist "%windir%\System32\winevt\Logs" (
del /q /f "%windir%\System32\winevt\Logs\*.evtx">nul 2>&1
)>nul 2>&1

:: Windows Temp
if exist "%windir%\Temp" (
del /q /s /f "%windir%\Temp\*.*">nul 2>&1
FOR /D %%p IN ("%windir%\Temp\*.*") DO rmdir "%%p" /s /q>nul 2>&1
)>nul 2>&1

:: Windows Updates
if exist "%windir%\SoftwareDistribution\Download" (
net stop "wuauserv">nul 2>&1
del /q /s /f "%windir%\SoftwareDistribution\Download\*.*">nul 2>&1
FOR /D %%p IN ("%windir%\SoftwareDistribution\Download\*.*") DO rmdir "%%p" /s /q>nul 2>&1
net start "wuauserv">nul 2>&1
)>nul 2>&1
if exist "%windir%\Logs\WindowsUpdate" (
del /q /f "%windir%\Logs\WindowsUpdate\*.etl">nul 2>&1
)>nul 2>&1

:: Windows Recents & Thumbnail Cache
taskkill /F /IM "explorer.exe">nul 2>&1
if exist "%appdata%\Microsoft\Windows\Recent" (
del /q /a /f "%appdata%\Microsoft\Windows\Recent\*.lnk">nul 2>&1
)>nul 2>&1
if exist "%localappdata%\Microsoft\Windows\Explorer" (
del /q /a /f "%localappdata%\Microsoft\Windows\Explorer\thumbcache_*.db">nul 2>&1
)>nul 2>&1
start explorer.exe>nul 2>&1

echo.
echo Done Windows Cleanup
:: Go Back To Menu
echo.
pause
goto menu

:4
cls
echo -----------------------------------------------------------------------------------------------------------
echo Clear Clipboard
echo -----------------------------------------------------------------------------------------------------------
echo.
echo Clearing Clipboard

:: Clear Clipboard
echo off | clip>nul 2>&1

echo.
echo Done Clearing Clipboard
:: Go Back To Menu
echo.
pause
goto menu

:error
cls
goto menu

:exit
exit