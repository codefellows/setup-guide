# Ops Setup

Now, install some applications and tools

### Add OpenSSH Server:

1. `sudo apt-get install openssh-server -y`
1. `sudo systemctl start sshd`
1. `sudo ufw allow ssh`
1. `sudo systemctl enable ssh`

### Install VIM:

1. `sudo apt install vim -y`
1. `vim --version >> ~/Downloads/deployerlog.txt`

### Install curl:

1. `sudo apt install curl -y`
1. `curl --version >> ~/Downloads/deployerlog.txt`

### Install Virtalbox:

1. `install-virtualbox`

### Install VSCode:

1. `sudo apt install software-properties-common apt-transport-https wget -y`
1. `wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add `
1. `sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main`
1. `sudo apt install code -y`
1. `code --version >> ~/Downloads/deployerlog.txt`

### Set Favorite Apps

- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'terminal.desktop']"```
- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'files.desktop']"```
- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"```
- ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"```

---

### [⇐ Previous](./6-display.md) | [Next ⇒](./8-rdp.md)
