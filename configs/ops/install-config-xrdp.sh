#!/bin/bash

sudo apt update

# Install xrdp
sudo apt install xrdp -y

# Enable xrdp
sudo systemctl enable --now xrdp

# Create firewall rule
sudo ufw allow from any to any port 3389 proto tcp

# Get regular gnome experience over RDP
sudo sed -i '4 i\export XDG_CURRENT_DESKTOP=ubuntu:GNOME' /etc/xrdp/startwm.sh
sudo sed -i '4 i\export GNOME_SHELL_SESSION_MODE=ubuntu' /etc/xrdp/startwm.sh
sudo sed -i '4 i\export DESKTOP_SESSION=ubuntu' /etc/xrdp/startwm.sh

# Remove "color profile authentication" popup in XRDP
sudo touch /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
sudo cat <<EOL | sudo tee /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOL

# Remove “Authentication required to refresh system repositories” popup on login via XRDP
sudo cat <<EOL | sudo tee /etc/polkit-1/localauthority/50-local.d/46-allow-update-repo.pkla
[Allow Package Management all Users]
Identity=unix-user:*
Action=org.freedesktop.packagekit.system-sources-refresh
ResultAny=yes
ResultInactive=yes
ResultActive=yes
EOL