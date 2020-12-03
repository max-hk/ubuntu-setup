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

sudo chmod +s update-adblock-hosts.sh
