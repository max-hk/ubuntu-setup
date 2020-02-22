sudo apt install --yes chrome-gnome-shell
sudo apt install --yes gnome-tweaks
sudo apt install --yes dconf-editor
sudo apt install --yes imwheel
sudo apt install --yes ibus-cangjie

# gnome-shell-extension-dash-to-panel


# "Amazon" shortcut
sudo apt remove --yes ubuntu-web-launchers
# "Aisleriot Solitaire" game
sudo apt remove --yes aisleriot
# "GNOME Mahjongg" game
sudo apt remove --yes gnome-mahjongg
# "GNOME Mines" game
sudo apt remove --yes gnome-mines
# "GNOME Sudoku" game
sudo apt remove --yes gnome-sudoku

cp -r ./~/. ~/
touch ~/Templates/Empty\ Document
dconf load / < dconf.txt
