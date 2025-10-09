Import-Module -Name .\Utils.ps1

reg.exe add "HKCU\Software\Classes\CLSID\{86ca1aa0-34aa-4e8b-a509-50c905bae2a2}\InprocServer32" /f /ve
reg.exe add "HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests /t REG_DWORD /d 0 /f
reg.exe add "HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\TimeZoneInformation" /v RealTimeIsUniversal /d 1 /t REG_DWORD /f

powercfg.exe /hibernate off

Set-MpPreference -DisableRealtimeMonitoring $true

Show-FileExtensions

# For more just look up installed apps in settings
Get-AppxPackage -AllUsers *Copilot* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Family* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Feedback Hub* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Microsoft Clipchamp* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Microsoft News* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Microsoft To Do* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Power Automate* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Quick Assist* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Solitare & Casual Games* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Sticky Notes* | Remove-AppxPackage -AllUsers
Get-AppxPackage -AllUsers *Weather* | Remove-AppxPackage -AllUsers


Set-ItemProperty -Path HKCU:\Software\Microsoft\Windows\CurrentVersion\Search -Name BingSearchEnabled -Value 0

Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseSpeed -Value 0
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseThreshold1 -Value 0
Set-ItemProperty -Path "HKCU:\Control Panel\Mouse" -Name MouseThreshold2 -Value 0

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -Name Hidden -Value 1

# Ultimate performance
powercfg -duplicatescheme e9a42b02-d5df-448d-aa00-03f14749eb61
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name "UserPreferencesMask" -Type Binary -Value ([byte[]](144,18,3,128,16,0,0,0))

Update-DesktopScripts

# Maybe will be added to script in the future. For now I just executed
# Disabled thelemetry https://winutil.christitus.com/dev/tweaks/essential-tweaks/tele/
# Removed OneDrive https://winutil.christitus.com/dev/tweaks/z--advanced-tweaks---caution/removeonedrive/
