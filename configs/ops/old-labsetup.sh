#!/bin/bash

# Homelab deployment automation script

# Import scripts
source ./install-virtualbox.sh

# Activate default dark mode (personal preference)
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'

# Deactivate screen locking, since we're mostly running this as a headless server box via RDP
gsettings set org.gnome.desktop.screensaver lock-enabled false

# Set Gnome Terminal's colors (personal preference)
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf

cd ~/Downloads
touch deployerlog.txt

sudo apt update
sudo apt-get update
sudo apt upgrade -y

# Install Open SSH Server, allow firewall, and launch the service on startup
sudo apt-get install openssh-server -y
sudo systemctl start sshd
sudo ufw allow ssh
sudo systemctl enable ssh

# Install VIM
sudo apt install vim -y
vim --version >> ~/Downloads/deployerlog.txt

# Install curl
sudo apt install curl -y
curl --version >> ~/Downloads/deployerlog.txt
 
# Install Virtalbox 
install-virtualbox

# Install VS Code
sudo apt install software-properties-common apt-transport-https wget -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt install code -y
code --version >> ~/Downloads/deployerlog.txt 

# Set favorite apps
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'terminal.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'files.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'gns3.desktop']"
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"

# Remove "color profile authentication" popup in XRDP
sudo touch /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
sudo cat >> /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla <<EOL
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOL
sudo rm /var/crash/*

# Remove “Authentication required to refresh system repositories” popup on login via XRDP
sudo cat >> /etc/polkit-1/localauthority/50-local.d/46-allow-update-repo.pkla <<EOL
[Allow Package Management all Users]
Identity=unix-user:*
Action=org.freedesktop.packagekit.system-sources-refresh
ResultAny=yes
ResultInactive=yes
ResultActive=yes
EOL

# Wrapup
echo "Deployment script completed. Here's what is now installed:"
cat ~/Downloads/deployerlog.txt
