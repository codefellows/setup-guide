# Ops Setup

## Adjust some display settings
- You may adjust these to your personal preference if you know how.

### Activate default dark mode (personal preference) - run this command

- ```gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark"```

### Deactivate screen locking, as we mostly running this as a server box via RDP- run this command

- ```gsettings set org.gnome.desktop.screensaver lock-enabled false```

### Set Gnome Terminal's colors (personal preference)- run these commands

- ```dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf```

```bash
cd ~/Downloads
touch deployerlog.txt

sudo apt update
sudo apt-get update
sudo apt upgrade -y
```
---

### [⇐ Previous](./5-virtualbox.md) | [Next ⇒](./7-applications.md)
