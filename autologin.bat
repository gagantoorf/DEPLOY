mkdir C:\TMP

:: reg add Autologon Option to Registry when task is ran

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /t REG_DWORD /d 1 /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /t REG_SZ /d Gagan /f

reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /t REG_SZ /d Gagan /f

 

:: Need to add scheduled task to Remove Reg keys on next system start up

 

echo timeout /t 120 >> C:\TMP\Autologon.cmd

echo Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v AutoAdminLogon /f > C:\TMP\Autologon.cmd

echo Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultUserName /f >> C:\TMP\Autologon.cmd

echo Reg delete "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" /v DefaultPassword /f >> C:\TMP\Autologon.cmd

echo schtasks /delete  /TN "Autologon" /f >> C:\TMP\Autologon.cmd

echo delete C:\TMP\Autologon.cmd /q >> C:\TMP\Autologon.cmd

 

:: add Scheduled task use:

schtasks /create  /sc ONSTART /TN "Autologon" /TR "C:\TMP\Autologon.cmd" /RU System

 

shutdown -r -t 120
