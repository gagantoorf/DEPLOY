Enable-Bitlocker -MountPoint c: -UsedSpaceOnly -SkipHardwareTest -RecoveryKeyPath "C:\Recovery\" -RecoveryKeyProtector
(Get-BitLockerVolume -MountPoint C).KeyProtector > C:\BitLocker_Recovery_Key.txt
