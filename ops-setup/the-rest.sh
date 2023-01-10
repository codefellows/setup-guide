#!/bin/bash

## System Settings

# Deactivate screen locking, as we mostly running this as a server box via RDP
gsettings set org.gnome.desktop.screensaver lock-enabled false

# If you prefer dark mode, activate it as the default:
gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"

## Set Gnome Terminal's Colors
# You may configure your terminal colors however you like. Start with this configuration as a default. 

wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/gnome-terminal-profiles.dconf
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf

## Install other stuff
# Add OpenSSH Server:

sudo apt-get install openssh-server -y
sudo systemctl start sshd
sudo ufw allow ssh
sudo systemctl enable ssh

# Install VIM:

sudo apt install vim -y

# Install curl:

sudo apt install curl -y

# Install VSCode:

sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# Set Favorite Apps

gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'terminal.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'files.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"


## RDP Config

# Get regular gnome experience over RDP

sudo sed -i '4 i\export XDG_CURRENT_DESKTOP=ubuntu:GNOME' /etc/xrdp/startwm.sh
sudo sed -i '4 i\export GNOME_SHELL_SESSION_MODE=ubuntu' /etc/xrdp/startwm.sh
sudo sed -i '4 i\export DESKTOP_SESSION=ubuntu' /etc/xrdp/startwm.sh

# Remove "color profile authentication" popup in XRDP
# I think this is probably broken
sudo touch /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
sudo cat >> /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla <<EOL```
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOL
```