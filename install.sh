#!/bin/bash

mkdir ~/.themes
mkdir ~/.icons
mkdir ~/.local/share/fonts/

cp -r cursor-MacOS ~/.icons/
cp -r icons-Cupertino-Ventura ~/.icons/

cp -r Mojave-Light ~/.themes/
cp -r Mojave-Dark ~/.themes/

cp FontsFree-Net-SFProDisplay-Regular.ttf ~/.local/share/fonts/

#install and settings Fildem Global Menu
sudo apt install plank gnome-shell-extensions gnome-tweaks bamfdaemon gir1.2-bamf-3 libbamf3-2 libkeybinder-3.0-0 gir1.2-keybinder-3.0 appmenu-gtk2-module appmenu-gtk3-module unity-gtk-module-common python3-pip git

python3 -m pip install --user fuzzysearch

cd Fildem-0.6.7
sudo python3 setup.py install --optimize=1
cp -r fildemGMenu@gonza.com ~/.local/share/gnome-shell/extensions/
cd ..
cp metadata.json ~/.local/share/gnome-shell/extensions/fildemGMenu@gonza.com/metadata.json
cp .gtkrc-2.0 ~/.gtkrc-2.0
cp settings.ini ~/.config/gtk-3.0/settings.ini
cp fildem.desktop ~/.config/autostart/fildem.desktop

cp -r plank-macOS-theme ~/.local/share/plank/themes/

cp img/big-sur-wallpaper.jpg ~/Pictures/

#install chrome and gnome extensions for chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

sudo dpkg -i google-chrome-stable_current_amd64.deb

sudo apt-get install chrome-gnome-shell

git clone https://gitlab.gnome.org/nE0sIghT/gnome-browser-connector.git

cd gnome-browser-connector

sudo apt install meson
meson --prefix=/usr builddir
meson install -C builddir
