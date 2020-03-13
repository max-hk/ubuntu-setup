# ubuntu-setup

## Setup

- 
  ```bash
  chmod +x ./setup.sh
  sudo ./setup.sh
  
  chmod +x ./install_firacode.sh
  sudo ./install_firacode.sh
  ```
  
- Install [Chrome](https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb)

<!--
- Install font [Roboto](https://github.com/google/roboto/releases/tag/v2.138), [Noto Sans CJK HK](https://github.com/googlefonts/noto-cjk)
-->

- Install [GNOME Shell integration extension](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep)

  - Install [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/), [User Themes](https://extensions.gnome.org/extension/19/user-themes/)

- Cangjie

  - After restart, add Cangjie input method in Settings → Region & Language → + → ⁝ → Other → Chinese (Cangjie)

    
## Customizations

- grub

  - Skip grub menu on boot ([source](https://askubuntu.com/a/1036957))

    - 
      ```
      sudo gedit /etc/default/grub
      ```

    - Set `GRUB_TIMEOUT` to `0.1` ( `GRUB_TIMEOUT=0.1` )

    - 
      ```
      sudo update-grub
      ```

  - Disable purple bootloader splash ([source](https://medium.com/@ThilinaAshenGamage/ubuntu-changing-the-default-look-feel-of-ubuntu-theme-icons-wallpapers-brightness-grub-fd65ddbde496))

    - 
      ```
      sudo gedit /usr/share/plymouth/themes/default.grub
      ```

    - 
      ```
      # previously #2c001e 44,0,30,0
      # now yaru #4f194c 79,25,76
      if background_color 0,0,0,0; then
        clear
      fi
      ```

    - 
      ```
      sudo update-grub
      ```

  - [Stylish grub theme](https://www.gnome-look.org/p/1009237/) ([GitHub](https://github.com/vinceliuice/grub2-themes))

- Visual Studio Code
    
  - Change UI font (run after every update)
  
    ```
    sudo sed -i 's/Ubuntu,/Roboto,Ubuntu,/g' /usr/share/code-insiders/resources/app/out/vs/workbench/workbench.desktop.main.css
    ```

  - Reset panel size

    Delete directory `~/.config/Code - Insiders/User/globalStorage/`

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

- [Stacer](https://github.com/oguzhaninan/Stacer/releases) (task Manager)

### Development

- [Visual Studio Code](https://code.visualstudio.com/)
  
- [Github desktop (Linux fork)](https://github.com/shiftkey/desktop/releases)

### Others

- [Anbox](https://docs.anbox.io/userguide/install.html) (Android Apps)
