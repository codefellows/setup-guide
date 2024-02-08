# Ops Setup


## Install Virtualbox

Configure your lab PC as a host for virtual machines.

### Install Virtualbox - Sourced from [LinuxTechi](https://www.linuxtechi.com/how-to-install-virtualbox-in-ubuntu/)

Run each of these commands in your terminal:

```This command will update the list of packages avaliable to you.```

```bash
sudo apt update
```

```Add VirtualBox 7 Repository```

```bash
sudo apt install curl wget gnupg2 lsb-release -y
curl -fsSL https://www.virtualbox.org/download/oracle_vbox_2016.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/vbox.gpg
curl -fsSL https://www.virtualbox.org/download/oracle_vbox.asc|sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/oracle_vbox.gpg
```

```bash
echo "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -sc) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
```

```Install VirtualBox```

```bash
sudo apt update
sudo apt install -y linux-headers-$(uname -r) dkms
```

NOTE: A good idea would be to type sudo apt install virtualbox– and hit tab to see the various VirtualBox versions available for installation – then select one of them by typing it completely.

```bash
sudo apt install virtualbox-7.0 -y
```

### Add the Virtualbox Extension Pack

```bash
wget https://download.virtualbox.org/virtualbox/7.0.10/Oracle_VM_VirtualBox_Extension_Pack-7.0.10.vbox-extpack
sudo vboxmanage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.10.vbox-extpack
```

> Note: Installing the extension pack will launch a special installer box within the Terminal, which will require you to confirm your choice. If you can't use your arrows to navigate this box, try using \<Tab\> to change your selection and \<Space\> to mark or un-mark a selection.

### Create a shortcut to Virtualbox
```bash
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
```
---

### [⇐ Previous](./3-rdp-config.md) | [Next ⇒](./5-system.md)
