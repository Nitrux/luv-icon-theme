# Lüv icon theme [![Build Status](https://travis-ci.org/Nitrux/luv-icon-theme.svg?branch=master)](https://travis-ci.org/Nitrux/luv-icon-theme)

Lüv is the spiritual successor to Flattr, a flat but complex icon theme for freedesktop environments.

![Lüv preview](https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/4a6b7d38-f7f7-4e71-928d-20199e2a5cb4/d6837ad-e5b05571-e06f-4dc6-9ada-6b6853360b80.png?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7InBhdGgiOiJcL2ZcLzRhNmI3ZDM4LWY3ZjctNGU3MS05MjhkLTIwMTk5ZTJhNWNiNFwvZDY4MzdhZC1lNWIwNTU3MS1lMDZmLTRkYzYtOWFkYS02YjY4NTMzNjBiODAucG5nIn1dXSwiYXVkIjpbInVybjpzZXJ2aWNlOmZpbGUuZG93bmxvYWQiXX0.SstEMK6Xhf7ZcOEc2cz7nHfPLcJnegTmtMSFRiopUvQ " Lüv is the spiritual successor to Flattr, a flat but complex icon theme for freedesktop environments. ")

Icons are licensed under the [Creative Commons Attribution-ShareAlike International 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/)

## Please be aware that this is not "complete" yet with thousands of icons inside. Icons are added gradually. Check the [FAQ](https://github.com/NitruxSA/luv-icon-theme/wiki/L%C3%BCv-FAQ) for questions.


Download
========

Icons and wallpapers are available to download directly from this repository. Clone this repository using the following command:

* In a Terminal execute the following command: 
  * `git clone https://github.com/Nitrux/luv-icon-theme.git`

Install
========

### Icons

* Move the folder(s) *Luv* `/usr/share/icons` for all environments or `~/.icons` for GTK based environments or `~/.local/share/icons` for Plasma 5.
* And finally select the theme in the Settings.

### Wallpapers

* For Plasma 5:
    * Move the folders inside *Wallpapers* to `/usr/share/wallpapers` or `~/.local/share/wallpapers/`, right-click on the desktop and select "Desktop Settings", finally select the background.
* For GTK:
    * Copy the images to your Pictures folder; rename them if necessary, right-click the image and select "Use as wallpaper".


Reporting missing icons
========

When reporting missing icons make sure to follow these steps so we can resolve it faster:

### For Linux:

1. Add **screenshots** of the missing icon and the instances where it's displayed like: menus, taskbars, panels, notifications, etc.
2. Use the following title prefix (without the quotes): "[Linux] App_name Desktop_environment" - that way we can tag them appropriately.
3. Add the relevant launcher information, software uses files with the extension *.desktop* as launchers for menus like Kickoff, Kicker, Mint menu, Gnome Shell overview, Unity dash, Whisker menu, etc. and these launchers are stored in `/usr/share/applications` (there might be a */kde* or */kde4* folder for KDE apps) for software installed through a package or the package manager. User-installed binaries and Google Chrome apps install their launchers here: `/home/$USER/.local/share/applications/`. Simply open these `.desktop` files with any text editor; copy and paste the line that says `Icon=` to your issue.
4. Add a description of the software, it's very important for us to know what the software does.

Some software uses absolute paths in their launchers, as such even when we add the icon the system will not load it, you may use [Hardcoded Icon Fixer](https://github.com/Foggalong/hardcode-fixer) to resolve this problem.

# Issues
If you find problems with the contents of this repository please create an issue.

©2019 Nitrux Latinoamericana S.C.
