Enable-Bitlocker -MountPoint c: -UsedSpaceOnly -SkipHardwareTest (Get-BitLockerVolume -MountPoint C).KeyProtector > d:\BitLocker_Recovery_Key.txt
