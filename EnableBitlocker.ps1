Enable-Bitlocker -MountPoint c: -UsedSpaceOnly -SkipHardwareTest -RecoveryKeyPath "D:\Recovery\" -RecoveryKeyProtector
(Get-BitLockerVolume -MountPoint C).KeyProtector > D:\BitLocker_Recovery_Key.txt
