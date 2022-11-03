# Ops Setup

Adjust settings for RDP (Remote Desktop Protocol). These steps will make your remote-connection sessions easier.

## RDP Config

### Remove "color profile authentication" popup in XRDP

Copy this entire block of commands, and paste it into your terminal to run all at once:

```bash
sudo touch /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
sudo cat >> /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla <<EOL```
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOL
```

Then run: `sudo rm /var/crash`

## Remove “Authentication required to refresh system repositories” popup on login via XRDP

Copy this entire block of commands, and paste it into your terminal to run all at once:

```bash
sudo cat >> /etc/polkit-1/localauthority/50-local.d/46-allow-update-repo.pkla <<EOL
[Allow Package Management all Users]
Identity=unix-user:*
Action=org.freedesktop.packagekit.system-sources-refresh
ResultAny=yes
ResultInactive=yes
ResultActive=yes
EOL
```
---

### [⇐ Previous](./7-applications.md) | [Next ⇒](./9-wrapup.md)
