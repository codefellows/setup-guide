#!/bin/bash

apt update

## Critical
# Install Open SSH Server, allow firewall, and launch the service on startup
apt-get install openssh-server -y
systemctl start sshd
ufw allow ssh
systemctl enable ssh

# Install xrdp
apt install xrdp -y
systemctl enable --now xrdp
ufw allow from any to any port 3389 proto tcp


### Cosmetic

## GUI Config

# Install gnome-tweaks
apt install gnome-tweaks -y

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


## Terminal Config

# Set Gnome Terminal's Colors
# You may configure your terminal colors however you like. Start with this configuration as a default.
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/gnome-terminal-profiles.dconf
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf


## RDP Config

# Get regular gnome experience over RDP
sudo sed -i '4 i\export XDG_CURRENT_DESKTOP=ubuntu:GNOME' /etc/xrdp/startwm.sh
sudo sed -i '4 i\export GNOME_SHELL_SESSION_MODE=ubuntu' /etc/xrdp/startwm.sh
sudo sed -i '4 i\export DESKTOP_SESSION=ubuntu' /etc/xrdp/startwm.sh

# Remove "color profile authentication" popup in XRDP
sudo touch /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
sudo cat <<EOL >> /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOL

# Remove “Authentication required to refresh system repositories” popup on login via XRDP
sudo cat <<EOL >> /etc/polkit-1/localauthority/50-local.d/46-allow-update-repo.pkla
[Allow Package Management all Users]
Identity=unix-user:*
Action=org.freedesktop.packagekit.system-sources-refresh
ResultAny=yes
ResultInactive=yes
ResultActive=yes
EOL

# Set Favorite Apps
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'terminal.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'files.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"


### Install Useful Apps

# Install wget
sudo apt install wget

# Install curl:
sudo apt install curl -y

# Install VSCode:
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y

# Install the locate command
apt install plocate -y

# Install xdg-utils
apt install xdg-utils -y

# Install vim-gtk (which has things like the +clipboard feature, which just vim doesn't for some reason)
apt install vim-gtk -y

# Install ranger terminal file manager
apt install ranger -y

# Install Tmux
apt install tmux -y

# Install htop
apt install htop -y
