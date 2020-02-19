sudo apt install gnome-tweaks --yes
sudo apt install chrome-gnome-shell --yes
sudo apt install dconf-editor --yes
sudo apt install imwheel --yes
sudo apt install ibus-cangjie --yes

cp -r ./~/. ~/
touch ~/Templates/Empty\ Document
dconf load / < dconf.txt

# Rebuild font cache after copying font files and enabling emoji
fc-cache -f -v
