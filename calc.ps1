Get-AppXPackage -AllUsers -Name Microsoft.WindowsCalculator | Foreach {Add-AppxPackage -DisableDevelopmentMode -Register “$($_.InstallLocation)\AppXManifest.xml” -Verbose}
