powershell.exe -command "Invoke-WebRequest  https://cgl-apps.s3.us-east-2.amazonaws.com/Teams_windows_x64.exe -Outfile C:\Temp\Teams_windows_x64.exe"
ping -n 20 127.0.0.1 >NUL
msiexec.exe /i C:\Temp\Teams_windows_x64.exe -s
