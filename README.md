# ubuntu-setup

## Run

- 
  ```bash
  chmod +x ./setup.sh
  ./setup.sh
  
  chmod +x ./install_firacode.sh
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
    
  - Set `GRUB_TIMEOUT` to `0.1` ( `GRUB_TIMEOUT=0.1` )
  
  - 
    ```
    sudo update-grub
    ```
    
## Customizations

- Visual Studio Code

  Custom CSS: edit `/usr/share/code-insiders/resources/app/out/vs/workbench/workbench.desktop.main.css`
  
- grub

  - Disable purple grub bootloader splash
  
    ```
    sudo gedit /usr/share/plymouth/themes/default.grub
    ```
    
    ```
    # previously #2c001e 44,0,30,0
    # now yaru #4f194c 79,25,76
    if background_color 0,0,0,0; then
      clear
    fi
    ```

  - [Stylish grub theme](https://www.gnome-look.org/p/1009237/) ([GitHub](https://github.com/vinceliuice/grub2-themes))
        
## Programs

### Customization

- Grub Customizer

  ```bash
  sudo apt install grub-customizer
  ```

- mate-mouse-properties (mouse settings)

  ```bash
  sudo apt install mate-mouse-properties
  ```
  
### Utilities

- GParted (disk partition)

  ```bash
  sudo apt install gparted
  ```

- [Stacer](https://github.com/oguzhaninan/Stacer/releases) (Task Manager)

### Development

- Visual Studio Code

  ```
  Type: Binary
  URI: http://packages.microsoft.com/repos/vscode
  Distribution: stable
  Components: main
  ```

  ```
  sudo apt install code-insiders
  ```
  
- [Github desktop (Linux fork)](https://github.com/shiftkey/desktop/releases)

### Others

- [Anbox](https://docs.anbox.io/userguide/install.html) (Android Apps)
