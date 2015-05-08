Flattr (icon theme) - Upstream repository
==============

![Flattr preview](http://fc05.deviantart.net/fs70/i/2015/019/8/b/flattr_by_deviantn7k1-d6837ad.png "Flattr is an icon theme for Linux desktops")
> Flattr is an icon theme for Linux desktops.

Icons are licensed under the [Creative Commons Attribution-ShareAlike International 4.0 License](https://creativecommons.org/licenses/by-sa/4.0/)

* Check **LICENSE** file inside the package for more information.

Download
========

Icons are available to download directly from this repository. Simply clone it and move the resulting folder(s) to the appropriate path.

* In a Terminal execute the following command: 
  * `git clone https://github.com/NitruxSA/flattr-icons.git`

Alternatively, click [**here**](https://github.com/NitruxSA/flattr-icons/archive/v1.2.tar.gz) for the latest release [v1.2].

Install
========

* Move the folder(s) *Flattr* and *Flattr Dark* to `/usr/share/icons`.
* And finally select it in the Settings.

Reporting missing icons
========

When reporting missing icons make sure to follow these steps so we can resolve it faster:

### For Linux:

1. Add **screenshots**, images speak louder than words. Add a screenshot of the missing icon and the instances where it's displayed  ` (menus, taskbars, panels, notifications, etc.).
2. Use the following title prefix (without the quotes): "[Linux] App_name Desktop_environment" - that way we can tag them appropriately.
3. Add the relevant launcher information, software in Linux DE uses files with the extension *.desktop* as launchers in menus (like Homerun, Mint menu, Gnome Shell overview, Unity, etc.), these launchers are stored in **/usr/share/applications** (there might be a */kde* folder for KDE apps) for software installed through a package or the package manager. Applications such as Google Chrome apps install their launchers here: **/home/$USER/.local/share/applications/**. Simply open these files with a text editor and copy their contents into your issue.
4. Add a description of the software, it's very important for us to know what the software does as we are not able to install every software under the sun and test them.

Some software uses *hardcoded paths* in their launchers, as such even when we add the icon the system will not load it, you may use [Hardcoded Icon Fixer](https://github.com/Foggalong/hardcode-fixer) to resolve this problem.

Contributions
========
* You're allowed (and welcomed) to contribute icons to the icon theme, however, make sure to read the [wiki](https://github.com/NitruxSA/flattr-icons/wiki) to get up and close with the design guidelines.
* When creating pull requests make sure that your local copy is up to date before pushing changes.
* Add a preview of the icon to the pull request, in the size of the icon and a zoomed version.
