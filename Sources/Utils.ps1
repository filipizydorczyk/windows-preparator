function Hide-FileExtensions()
{
    # http://superuser.com/questions/666891/script-to-set-hide-file-extensions
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "1"
    Pop-Location
}

function Show-FileExtensions()
{
    # http://superuser.com/questions/666891/script-to-set-hide-file-extensions
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "0"
    Pop-Location
}

function Install-VSCodeExtensions()
{
    foreach($line in Get-Content ..\Resources\VSCodeExtensions.txt) {
        code --install-extension $line
    }
}

function Install-ChocolateyPackages()
{
    foreach($line in Get-Content ..\Resources\Packages.txt) {
        choco install -y $line
    }
}

function Hide-DesktopFiles()
{
    $Path="HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
    Set-ItemProperty -Path $Path -Name "HideIcons" -Value 1
    Get-Process "explorer"| Stop-Process
}

function Disable-Hibernation() {
    powercfg.exe /hibernate off
}

function Disable-WindowsDefender() {
    Set-MpPreference -DisableRealtimeMonitoring $true
}

function Disable-AutoStartApps() {
    reg delete HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /f
}

function Update-DirectoryStructure() {
    $DevelopmentDirectory = "~\Development\"
    New-Item -ItemType Directory -Force -Path $DevelopmentDirectory
}

function Update-DesktopScripts() {
    $src = Resolve-Path ..\Library\*
    $dest = Resolve-Path ~\Desktop
    
    Copy-Item -Path $src -Destination $dest -Recurse
}
