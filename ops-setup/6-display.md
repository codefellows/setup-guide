# Ops Setup

Let's now configure some system settings.

### System Settings

1. Deactivate screen locking, as we mostly running this as a server box via RDP:
   - `gsettings set org.gnome.desktop.screensaver lock-enabled false`
1. If you prefer dark mode, activate it as the default:
   - `gsettings set org.gnome.desktop.interface gtk-theme "Adwaita-dark`
1. Adjust other display settings from the Settings app.
   - You may adjust these to your personal preference if you know how.

### Set Gnome Terminal's Colors

You may configure your terminal colors however you like. Start with this configuration as a default. 

Run these commands in your terminal to download and install our suggested config:

1. `wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/gnome-terminal-profiles.dconf`
2. `dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf`

### Update System Software

To update other system software, run each of these commands, one at a time in the terminal:

```bash
cd ~/Downloads
touch deployerlog.txt

sudo apt update
sudo apt-get update
sudo apt upgrade -y
```

Some of these steps may take some time to complete.

---

### [⇐ Previous](./5-virtualbox.md) | [Next ⇒](./7-applications.md)
