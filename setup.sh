sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell
sudo apt install dconf-editor
sudo apt install imwheel
sudo apt install ibus-cangjie

touch ~/Templates/Empty\ Document
dconf load / < dconf.txt

# Rebuild font cache after copying font files
# fc-cache -f -v
