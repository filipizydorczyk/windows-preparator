This repository contains list of scripts that will setup and install all necessery scripts for me on fresh windows install.

# Usage

Open powershell (as administrator) in pace where you cloned this repository. Before you will run any script make sure that execution plociy is correct by typing

```ps1
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Now you shlould be able to run scripts

```ps1
.\SetupSettings.ps1 # Sets up disired settings
.\InstallSoftware.ps1 # Installs all software and its extensions
```

# Windows terminal notes

To open quake mode window press `Win` + `~`. If you want to set background for terminal use these in json config as you need

```json
"backgroundImage": "C:/Users/thoma/OneDrive/Pictures/Me/Thomas Maurer Logos 2016/WindowsTerminal/Black Cloud Robot.png",
"backgroundImageOpacity" : 0.2,
"useAcrylic" : true,
"acrylicOpacity" : 0.5
```

# To do list

-   [ ] KDE didn't work
-   [ ] User other version of Java Runtime
-   [ ] Find a way to backup package list
-   [ ] Upgrade packages
-   [x] Git is not in `PATH`
-   [ ] Intsalling by providing all packagse names at once not line by line
    > In the console (Command Prompt), type choco install NAME1 NAME2 to install multiple packages (replace “NAME1” with the name of the first package and so on). You can add as many packages as you require to install at a time, but do note to provide correct package names, else Chocolatey may show an error.
-   [ ] Nvm instead of nodejs
-   [x] Refactor names
-   [ ] Add wsl instalation
-   [x] Add windows terminal and replace dropdown with this
