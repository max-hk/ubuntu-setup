sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell
sudo apt install dconf-editor
sudo apt install imwheel
sudo apt install ibus-cangjie
sudo apt install fonts-firacode

cp -r ./~/. ~/
touch ~/Templates/Empty\ Document
dconf load / < dconf.txt

# Rebuild font cache after copying font files and enabling emoji
fc-cache -f -v
