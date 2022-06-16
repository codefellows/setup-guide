# Ops Setup

## Install applications and tools

### Install Open SSH Server, allow firewall, and launch the service on startup

- ```sudo apt-get install openssh-server -y```
- ```sudo systemctl start sshd```
- ```sudo ufw allow ssh```
- ```sudo systemctl enable ssh```

### Install VIM

- ```sudo apt install vim -y```
- ```vim --version >> ~/Downloads/deployerlog.txt```

### Install curl

- ```sudo apt install curl -y```
- ```curl --version >> ~/Downloads/deployerlog.txt```

### Install Virtalbox

- ```install-virtualbox```

### Install VS Code

- ```sudo apt install software-properties-common apt-transport-https wget -y```
- ```wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -```
- ```sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"```
- ```sudo apt install code -y```
- ```code --version >> ~/Downloads/deployerlog.txt```

### Set favorite apps

- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'terminal.desktop']"```
- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'files.desktop']"```
- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"```
- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'gns3.desktop']"```
- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"```

---

### [⇐ Previous](./6-display.md) | [Next ⇒](./8-rdp.md)
