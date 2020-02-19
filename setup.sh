sudo apt install --yes gnome-tweaks
sudo apt install --yes chrome-gnome-shell
sudo apt install --yes dconf-editor
sudo apt install --yes imwheel
sudo apt install --yes ibus-cangjie

cp -r ./~/. ~/
touch ~/Templates/Empty\ Document
dconf load / < dconf.txt

# Rebuild font cache after copying font files and enabling emoji
fc-cache -f -v
