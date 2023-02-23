# Ops Setup

## RDP Config

Adjust settings for RDP (Remote Desktop Protocol). These steps will make your remote-connection sessions easier.

>  Note: Some of these commands run silently! If they execute successfully they will not return anything to the screen. If they fail then you should receive an error message.

### Get regular gnome experience over RDP
Copy and run each of these commands in the terminal:

```bash
sudo sed -i '4 i\export XDG_CURRENT_DESKTOP=ubuntu:GNOME' /etc/xrdp/startwm.sh
```
```bash
sudo sed -i '4 i\export GNOME_SHELL_SESSION_MODE=ubuntu' /etc/xrdp/startwm.sh
```
```bash
sudo sed -i '4 i\export DESKTOP_SESSION=ubuntu' /etc/xrdp/startwm.sh
```

### Remove "color profile authentication" popup in XRDP

Run this command:

```bash
sudo touch /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
```
Then copy this entire block of commands, and paste it into your terminal to run all at once:
```bash
sudo cat <<EOL | sudo tee /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOL
```


### Remove “Authentication required to refresh system repositories” popup on login via XRDP

Copy this entire block of commands, and paste it into your terminal to run all at once:

```bash
sudo cat <<EOL | sudo tee /etc/polkit-1/localauthority/50-local.d/46-allow-update-repo.pkla
[Allow Package Management all Users]
Identity=unix-user:*
Action=org.freedesktop.packagekit.system-sources-refresh
ResultAny=yes
ResultInactive=yes
ResultActive=yes
EOL
```
---

### [⇐ Previous](./2-remote-access.md) | [Next ⇒](./4-virtualbox.md)
