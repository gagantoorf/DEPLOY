@ECHO OFF

if exist "%USERPROFILE%\AppData\Local\RingCentral\" GOTO :END

REM Modify the below UNC path to match where your files are located

msiexec.exe /i \\gt02\Public\AppTEST\RingCentral-x64.msi /qn /l*v C:\windows\temp\rcdesktop_install.log

:END
