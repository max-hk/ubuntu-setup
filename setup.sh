#!/bin/bash

cp -r ./~/. ~/
dconf load / < dconf.txt

sudo apt install --yes chrome-gnome-shell
sudo apt install --yes gnome-tweaks
sudo apt install --yes dconf-editor
sudo apt install --yes imwheel
sudo apt install --yes ibus-cangjie
sudo apt install --yes grub-customizer

# "Aisleriot Solitaire" game
sudo apt remove --yes aisleriot
# "GNOME Mahjongg" game
sudo apt remove --yes gnome-mahjongg
# "GNOME Mines" game
sudo apt remove --yes gnome-mines
# "GNOME Sudoku" game
sudo apt remove --yes gnome-sudoku

# -r flag is required to replace single quote characters, see https://stackoverflow.com/questions/8510713/sed-single-quotes#comment10535527_8510713
sudo sed -i -r -e "s/gi.require_version\('Gio','3.0'\)//g" -e "s/gi.require_version\('GLib','3.0'\)//g" /usr/lib/python3/dist-packages/ibus_cangjie/setup.py
