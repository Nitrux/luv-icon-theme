Lüv (icon theme) - Upstream repository
==============

## [Sponsor Lüv by clicking here!](http://uriherrera.com/sponsor/). We truly appreciate the support you can give us.


![Lüv preview](http://i.imgur.com/xqPuYYZ.png " Lüv is the spiritual successor to Flattr, a flat but complex icon theme for freedesktop environments. ")

Icons are licensed under the [Creative Commons Attribution-ShareAlike International 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/)

## Please be aware that this is not "complete" yet with thousands of icons inside. Icons are added gradually. Check the [FAQ](https://github.com/NitruxSA/luv-icon-theme/wiki/L%C3%BCv-FAQ) for questions.


Download
========

Icons are available to download directly from this repository. Simply clone it and move the resulting folder(s) to the appropriate path.

* In a Terminal execute the following command: 
  * `git clone https://github.com/NitruxSA/luv-icon-theme.git`

Alternatively, click [**here**](https://github.com/NitruxSA/luv-icon-theme/releases/) for the latest release.

Install
========

### Icons

* Move the folder(s) *Luv* and *Luv Dark* to `/usr/share/icons` for all environments or `~/.icons` for GTK based environments or `~/.local/share/icons` for Plasma 5.
* And finally select the theme in the Settings.

### Wallpapers

* For Plasma 5:
    * Move the folders inside *wallpapers* to `/usr/share/wallpapers` or `~/.local/share/wallpapers/`, right-click on the desktop and select "Desktop Settings", finally select the background.
* For GTK:
    * Copy the images to your Pictures folder; rename them if necessary, right-click the image and select "Use as wallpaper".


Reporting missing icons
========

When reporting missing icons make sure to follow these steps so we can resolve it faster:

### For Linux:

1. Add **screenshots**, images speak louder than words. Add a screenshot of the missing icon and the instances where it's displayed  ` (menus, taskbars, panels, notifications, etc.).
2. Use the following title prefix (without the quotes): "[Linux] App_name Desktop_environment" - that way we can tag them appropriately.
3. Add the relevant launcher information, software in Linux DE uses files with the extension *.desktop* as launchers in menus (like Homerun, Mint menu, Gnome Shell overview, Unity, etc.), these launchers are stored in **/usr/share/applications** (there might be a */kde* folder for KDE apps) for software installed through a package or the package manager. Applications such as Google Chrome apps install their launchers here: **/home/$USER/.local/share/applications/**. Simply open these files with a text editor and copy their contents into your issue.
4. Add a description of the software, it's very important for us to know what the software does as we are not able to install every software under the sun and test them.

Some software uses absolute paths in their launchers, as such even when we add the icon the system will not load it, you may use [Hardcoded Icon Fixer](https://github.com/Foggalong/hardcode-fixer) to resolve this problem.
