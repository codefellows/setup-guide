#!/bin/bash

## System Config

# Deactivate screen locking -- convenient if you're mostly running this as a headless server box via RDP
gsettings set org.gnome.desktop.screensaver lock-enabled false

# Set dark mode as default ()
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

# Auto-open gnome-terminal upon login
sudo cat <<EOL >> ~/.config/autostart/gnome-terminal.desktop
"[Desktop Entry]
Type=Application
Exec=gnome-terminal
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_NG]=Terminal
Name=Terminal
Comment[en_NG]=Start Terminal On Startup
Comment=Start Terminal On Startup"
EOL

# Set Favorite Apps
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'terminal.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'files.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"


## Terminal Config

# Set Gnome Terminal's Colors
# You may configure your terminal colors however you like. Start with this configuration as a default.
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/gnome-terminal-profiles.dconf
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
# rm gnome-terminal-profiles.dconf
