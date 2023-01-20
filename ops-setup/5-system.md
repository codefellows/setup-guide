# Ops Setup

## System Config

These commands will change various settings to be more convenient and attractive.

Copy and run each command or code block in the Terminal.

### Deactivate screen locking
This is convenient if you're mostly running this as a headless server box via RDP.
```bash
gsettings set org.gnome.desktop.screensaver lock-enabled false
```

### Set dark mode as default
```bash
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
```

### Auto-open gnome-terminal upon login
```bash
mkdir ~/.config/autostart/
```
```bash
touch ~/.config/autostart/gnome-terminal.desktop
```
```bash
sudo cat <<EOL >> ~/.config/autostart/gnome-terminal.desktop
[Desktop Entry]
Type=Application
Exec=gnome-terminal
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
Name[en_NG]=Terminal
Name=Terminal
Comment[en_NG]=Start Terminal On Startup
Comment=Start Terminal On Startup
EOL
```

### Set Favorite Apps
```bash
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'terminal.desktop']"
```
```bash
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'files.desktop']"
```
```bash
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"
```
```bash
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'code.desktop']"
```

### Set Gnome Terminal's Colors
You may configure your terminal colors however you like. Start with this configuration as a default.

Run these commands in your terminal to download and install our suggested config:

```bash
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/gnome-terminal-profiles.dconf
```
```bash
dconf load /org/gnome/terminal/legacy/profiles:/ < gnome-terminal-profiles.dconf
```
```bash
rm gnome-terminal-profiles.dconf
```

---

### [⇐ Previous](./4-virtualbox.md) | [Next ⇒](./6-ip.md)
