This repository contains list of scripts that will setup and install all necessery scripts for me on fresh windows install.

 - Sources - scripts to setup fresh windows machine
 - Resources - additional files required by scripts
 - Library - utilites to quick use shile using machine (during setup these will be copied to desktop so that u can quickly use the whenever needed)

# Usage

Open powershell (as administrator) in pace where you cloned this repository. Before you will run any script make sure that execution plociy is correct by typing (select Unrestricted if RemoteSigned is causing problems)

```ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Scope CurrentUser
```

Now you shlould be able to run scripts

```ps1
.\InstallSoftwareWinGet.ps1 # Installs all software and its extensions
.\SetupSettings.ps1 # Sets up disired settings
```

I used to use Chocolatey but I switched to winget

# Windows terminal notes

To open quake mode window press `Win` + `~`. If you want to set background for terminal use these in json config as you need

```json
"backgroundImage": "C:/Users/user/path/to/image.png",
"backgroundImageOpacity" : 0.2,
"useAcrylic" : true,
"acrylicOpacity" : 0.5
```

# To do list

-   [ ] Add wsl instalation
