Import-Module -Name .\Utils.ps1

$packages = @(
    'Google.Chrome',
    'Nvidia.GeForceExperience',
    'Microsoft.WindowsTerminal',
    'Valve.Steam',
    'Mozilla.Firefox',
    'GOG.Galaxy',
    'GIMP.GIMP',
    'Mozilla.Thunderbird',
    'Spotify.Spotify',
    'ElectronicArts.EADesktop',
    'RiotGames.Valorant.EU',
    'Git.Git',
    'Ubisoft.Connect',
    '7zip.7zip',
    'Discord.Discord',
    'Telegram.TelegramDesktop',
    'VideoLAN.VLC',
    'Logitech.GHUB',
    'ProtonTechnologies.ProtonVPN',
    'Microsoft.VisualStudioCode',
    'TeamSpeakSystems.TeamSpeakClient'
)

foreach($line in $packages) {
    winget install --force -e --id $line
}

Install-VSCodeExtensions