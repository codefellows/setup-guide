# Ops Setup


## Install Virtualbox

Configure your lab PC as a host for virtual machines.

### Install Virtalbox

Run each of these commands in your terminal:

This command will add the repository to allow for automatic updates.
```bash
sudo add-apt-repository "deb [arch=amd64] http://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib"
```

This command will update the list of packages avaliable to you.
```bash
sudo apt update
```

NOTE: A good idea would be to type sudo apt install virtualbox– and hit tab to see the various VirtualBox versions available for installation – then select one of them by typing it completely.

Installs VirtualBox 7.0
```bash
sudo apt install virtualbox-7.0 -y
```

### Add the Virtualbox Extension Pack

```bash
sudo apt install virtualbox-ext-pack -y
```

> Note: Installing the extension pack will launch a special installer box within the Terminal, which will require you to confirm your choice. If you can't use your arrows to navigate this box, try using \<Tab\> to change your selection and \<Space\> to mark or un-mark a selection.

### Create a shortcut to Virtualbox
```bash
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
```

---

### [⇐ Previous](./3-rdp-config.md) | [Next ⇒](./5-system.md)
