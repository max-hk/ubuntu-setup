# ubuntu-setup

## Run

- 
  ```bash
  chmod +x ./setup.sh
  chmod +x ./install_firacode.sh
  ./setup.sh
  ./install_firacode.sh
  ```
  
- Install [Chrome](https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb)

<!--
- Install font [Roboto](https://github.com/google/roboto/releases/tag/v2.138), [Noto Sans CJK HK](https://github.com/googlefonts/noto-cjk)
-->

- Install [GNOME Shell integration](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep)

  - Install [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/), [User Themes](https://extensions.gnome.org/extension/19/user-themes/)

- Cangjie

  - 
      ```
      sudo gedit /usr/lib/python3/dist-packages/ibus_cangjie/setup.py
      ```

  - Comment out line 23, 24
  
  - Add Cangjie input method in Settings → Region & Language → + → ⁝ → Other → Chinese (Cangjie)
  

- Skip grub menu on boot [(source)](https://askubuntu.com/a/1036957)

  - 
    ```
    sudo gedit /etc/default/grub
    ```
    
  - Set GRUB_TIMEOUT to 0.1 ( `GRUB_TIMEOUT=0.1` )
  
  - 
    ```
    sudo update-grub
    ```
    
- Reboot
    
## Useful tools

- GParted (disk partition)

  ```bash
  sudo apt install gparted
  ```

- mate-mouse-properties (mouse settings)

  ```bash
  sudo apt install mate-mouse-properties
  ```
  
- [Anbox](https://docs.anbox.io/userguide/install.html) (Android Apps)

- [Stacer](https://github.com/oguzhaninan/Stacer/releases) (Task Manager)
