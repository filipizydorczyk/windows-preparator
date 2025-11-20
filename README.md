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
.\SetupWin11.ps1 # Sets up windws 11 after fresh install
```

For some of the changes you might want to restart Windows Explorer. Also some of the default app you might have to uninstall in windwos settings.

# Windows terminal notes

To open quake mode window press `Win` + `~`. If you want to set background for terminal use these in json config as you need

```json
"backgroundImage": "C:/Users/user/path/to/image.png",
"backgroundImageOpacity" : 0.2,
"useAcrylic" : true,
"acrylicOpacity" : 0.5
```
# Additional setup

I change some additionall stuff using [Chris Titus winutil](https://github.com/ChrisTitusTech/winutil). In the future I may want to just used proper commands in the script but for now I can just run this in terinal and click what I want.

```sh
irm "https://christitus.com/win" | iex
```

Additionally you need to disable HDR setting in windows (seems like there is no command for that). Also review `Settings -> Privacy & security` sections as there are some questionable settings too.

# To do list

- [ ] Add wsl instalation
