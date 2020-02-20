sudo apt install --yes gnome-tweaks
sudo apt install --yes chrome-gnome-shell
sudo apt install --yes dconf-editor
sudo apt install --yes imwheel
sudo apt install --yes ibus-cangjie

# "Amazon" shortcut
sudo apt remove --yes ubuntu-web-launchers
# "Aisleriot Solitaire" game
sudo apt remove --yes aisleriot
# "GNOME Mahjongg" game
sudo apt remove --yes gnome-mahjongg
# "GNOME Mines" game
sudo apt remove --yes gnome-mines

cp -r ./~/. ~/
touch ~/Templates/Empty\ Document
dconf load / < dconf.txt

# Rebuild font cache after copying font files and enabling emoji
fc-cache -f -v
