# ubuntu-setup

## Run

- 
  ```bash
  chmod +x ./setup.sh
  ./setup.sh
  ```
  
- Install [Chrome](https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb)

- Install font [Roboto](https://github.com/google/roboto/releases/tag/v2.138), [Noto Sans CJK HK](https://github.com/googlefonts/noto-cjk)

- Install [GNOME Shell integration](https://chrome.google.com/webstore/detail/gnome-shell-integration/gphhapmejobijbbhgpjhcjognlahblep)

  - Install [Dash to Panel](https://extensions.gnome.org/extension/1160/dash-to-panel/)
  
  - Install [User Themes](https://extensions.gnome.org/extension/19/user-themes/)

- In gnome-tweaks,

  - Change font to Roboto
  
  - Change Theme to "Yaru Roboto"
  
  - Turn on Dash to Panel
  
  - Turn on User Themes

- In "Startup Applications",

  - Add Imwheel  
    Command: `imwheel`
  
  - Add Chrome  
    command: `google-chrome --no-startup-window`
    
## Useful tools

### Disk partition

- GParted

  ```bash
  sudo apt install gparted
  ```

### Mouse settings

- mate-mouse-properties

  ```bash
  sudo apt install mate-mouse-properties
  ```
  
