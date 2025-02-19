@echo off
title WI-FI Signal Strength Checker
chcp 65001
Color B

:Main
cls
echo ███╗   ███╗ █████╗ ██╗███╗   ██╗    ███╗   ███╗███████╗███╗   ██╗██╗   ██╗
echo ████╗ ████║██╔══██╗██║████╗  ██║    ████╗ ████║██╔════╝████╗  ██║██║   ██║
echo ██╔████╔██║███████║██║██╔██╗ ██║    ██╔████╔██║█████╗  ██╔██╗ ██║██║   ██║
echo ██║╚██╔╝██║██╔══██║██║██║╚██╗██║    ██║╚██╔╝██║██╔══╝  ██║╚██╗██║██║   ██║
echo ██║ ╚═╝ ██║██║  ██║██║██║ ╚████║    ██║ ╚═╝ ██║███████╗██║ ╚████║╚██████╔╝
echo ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝    ╚═╝     ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝
echo 1. Check WI-FI Signal Strength
echo 2. Exit
set /p choice=Choose an option: 
if %choice%==1 goto SignalStrength
if %choice%==2 goto Exit


:Refresh
timeout /t 2 >nul
cls

:SignalStrength
cls
echo ███████╗██╗ ██████╗ ███╗   ██╗ █████╗ ██╗         ███████╗████████╗██████╗ ███████╗███╗   ██╗ ██████╗████████╗██╗  ██╗
echo ██╔════╝██║██╔════╝ ████╗  ██║██╔══██╗██║         ██╔════╝╚══██╔══╝██╔══██╗██╔════╝████╗  ██║██╔════╝╚══██╔══╝██║  ██║
echo ███████╗██║██║  ███╗██╔██╗ ██║███████║██║         ███████╗   ██║   ██████╔╝█████╗  ██╔██╗ ██║██║  ███╗  ██║   ███████║
echo ╚════██║██║██║   ██║██║╚██╗██║██╔══██║██║         ╚════██║   ██║   ██╔══██╗██╔══╝  ██║╚██╗██║██║   ██║  ██║   ██╔══██║
echo ███████║██║╚██████╔╝██║ ╚████║██║  ██║███████╗    ███████║   ██║   ██║  ██║███████╗██║ ╚████║╚██████╔╝  ██║   ██║  ██║
echo ╚══════╝╚═╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝╚══════╝    ╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝  ╚═══╝ ╚═════╝   ╚═╝   ╚═╝  ╚═╝
echo.

netsh wlan show interfaces | findstr "Signal"
netsh wlan show interfaces | findstr "SSID"
netsh wlan show interfaces | findstr "Network type"
netsh wlan show interfaces | findstr "Channel"
netsh wlan show interfaces | findstr "Radio type"
netsh wlan show interfaces | findstr "Authentication"
netsh wlan show interfaces | findstr "Cipher"
netsh wlan show interfaces | findstr "Receive rate"
netsh wlan show interfaces | findstr "Transmit rate"
netsh wlan show interfaces | findstr "Profile"
netsh wlan show interfaces | findstr "Hosted network status"
netsh wlan show interfaces | findstr "State"
netsh wlan show interfaces | findstr "Mode"
netsh wlan show interfaces | findstr "Channel Width"
netsh wlan show interfaces | findstr "Transmit Power"
netsh wlan show interfaces | findstr "Roaming"
netsh wlan show interfaces | findstr "AutoConfig"
goto Refresh


:Exit
echo Exiting...
Exit