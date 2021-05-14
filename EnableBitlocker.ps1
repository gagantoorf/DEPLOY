Enable-Bitlocker -MountPoint c: -UsedSpaceOnly -SkipHardwareTest -RecoveryPasswordProtector (Get-BitLockerVolume -MountPoint C).KeyProtector > D:\BitLocker_Recovery_Key.txt

