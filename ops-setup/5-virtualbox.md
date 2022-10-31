# Ops Setup

Configure your lab PC as a host for virtual machines.

## Virtualbox

### Download Virtalbox

Run each of these commands in your terminal:

1. ```wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -```
1. ```wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -```
1. ```echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian eoan contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list```

### Install Virtalbox using Apt 

Run each of these commands in your terminal:

1. ```sudo apt update```
1. ```sudo apt install linux-headers-$(uname -r) dkms -y```
1. ```sudo apt install virtualbox -y```

### Add the Virtualbox Extension Pack 6.1.16

Run each of these commands in your terminal:

1. ```wget https://download.virtualbox.org/virtualbox/6.1.16/Oracle_VM_VirtualBox_Extension_Pack-6.1.16-140961.vbox-extpack```
1. ```vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-6.1.16-140961.vbox-extpack --accept-license=33d7284dc4a0ece381196fda3cfe2ed0e1e8e7ed7f27b9a9ebc4ee22e24bd23c```

### Create a Shortcut to Virtualbox

Run this command in your terminal to add a shortcut to your desktop:

1. ```gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"```

---

### [⇐ Previous](./4-git.md) | [Next ⇒](./6-display.md)
