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

### Create a shortcut to Virtualbox
```bash
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
```

---

### [⇐ Previous](./3-rdp-config.md) | [Next ⇒](./5-system.md)
