# Ops Setup


## Install Virtualbox

Configure your lab PC as a host for virtual machines.

### Install Virtalbox using Apt 

Run each of these commands in your terminal:

```bash
sudo apt update
```
```bash
sudo apt install virtualbox -y
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
