# ubuntu-setup

## Setup

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

- Install [GNOME Shell integration extension](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep)

  - Install [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/), [User Themes](https://extensions.gnome.org/extension/19/user-themes/), [Clipboard Indicator](https://extensions.gnome.org/extension/779/clipboard-indicator/)

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

## Useful commands

- List manually installed packages [(source)](https://askubuntu.com/a/492343)

  ```
  comm -23 <(apt-mark showmanual | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
  ```
- List removed preinstalled packages

  <!--
  ```
  # WARNING: apt does not have a stable CLI interface. Use with caution in scripts.
  comm -13 <(apt list --installed | sed -n 's/[//].*//p' | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
  comm -13 <(apt list --installed | awk -F '/' '{print $1}' | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
  ```
  -->

  ```
  comm -13 <(dpkg -l | grep ^ii | awk '{print $2}' | awk -F: '{print $1}' | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)

  # or

  comm -13 <( ( apt-mark showmanual; apt-mark showauto ) | cat | sort -u) <(gzip -dc /var/log/installer/initial-status.gz | sed -n 's/^Package: //p' | sort -u)
  ```
