#!/bin/bash

mkdir ~/.themes
mkdir ~/.icons

cp -r cursor-MacOS ~/.icons/
cp -r icons-Cupertino-Ventura ~/.icons/

cp -r Mojave-Light ~/.themes/
cp -r Mojave-Dark ~/.themes/

#install and settings Fildem Global Menu
sudo apt install plank gnome-shell-extensions gnome-tweaks bamfdaemon gir1.2-bamf-3 libbamf3-2 libkeybinder-3.0-0 gir1.2-keybinder-3.0 appmenu-gtk2-module appmenu-gtk3-module unity-gtk-module-common python3-pip git

python3 -m pip install --user fuzzysearch

cd Fildem-0.6.7
sudo python3 setup.py install --optimize=1
cp -r fildemGMenu@gonza.com ~/.local/share/gnome-shell/extensions/
cp metadata.json ~/.local/share/gnome-shell/extensions/fildemGMenu@gonza.com/metadata.json
cp .gtkrc-2.0 ~/.gtkrc-2.0
cp settings.ini ~/.config/gtk-3.0/settings.ini
cp fildem.desktop ~/.config/autostart/fildem.desktop

cp -r plank-MacOS-theme ~/.local/share/plank/themes/

