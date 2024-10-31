
@echo off
ping 127.0.0.1 -n 6 > nul
cd "C:\PROGRA~2"
:: sc stop ConnectSecureAgentMonitor
:: timeout /T 5 > nul
:: sc delete ConnectSecureAgentMonitor
timeout /T 5 > nul
sc stop CyberCNSAgent
timeout /T 5 > nul
sc delete CyberCNSAgent
ping 127.0.0.1 -n 6 > nul
taskkill /IM osqueryi.exe /F
taskkill /IM nmap.exe /F
taskkill /IM cyberutilities.exe /F
CyberCNSAgent\cybercnsagent.exe --internalAssetArgument uninstallservice
rmdir CyberCNSAgent /s /q
    