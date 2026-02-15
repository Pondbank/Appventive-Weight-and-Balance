@echo off
setlocal

set APK=Appventive Weight and Balance_com.appventive.wb.full_2.0_20.apk
set ADB=adb.exe

echo Checking files...
echo.

if not exist "%ADB%" (
    echo ERROR: adb.exe not found in this folder.
    pause
    exit /b
)

if not exist "%APK%" (
    echo ERROR: %APK% not found in this folder.
    pause
    exit /b
)

echo Both files found.
echo Installing APK...
echo.

"%ADB%" install --bypass-low-target-sdk-block "%APK%"

echo.
echo Done.
pause
