function HideFileExtensions()
{
    # http://superuser.com/questions/666891/script-to-set-hide-file-extensions
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "1"
    Pop-Location
}

function ShowFileExtensions()
{
    # http://superuser.com/questions/666891/script-to-set-hide-file-extensions
    Push-Location
    Set-Location HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced
    Set-ItemProperty . HideFileExt "0"
    Pop-Location
}

function InstallVSCodeExtensions()
{
    foreach($line in Get-Content ..\Resources\VSCodeExtensions.txt) {
        code --install-extension $line
    }
}

function InstaChocolateyPackages()
{
    foreach($line in Get-Content ..\Resources\Packages.txt) {
        choco install -y $line
    }
}