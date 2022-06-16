# Ops Setup

## Adjust settings for RDP (Remote Desktop Protocol)

- These will make the RDP sessions easier

### Remove "color profile authentication" popup in XRDP

- ```sudo touch /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla```

```bash
sudo cat >> /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla <<EOL```
[Allow Colord all Users]
Identity=unix-user:*
Action=org.freedesktop.color-manager.create-device;org.freedesktop.color-manager.create-profile;org.freedesktop.color-manager.delete-device;org.freedesktop.color-manager.delete-profile;org.freedesktop.color-manager.modify-device;org.freedesktop.color-manager.modify-profile
ResultAny=no
ResultInactive=no
ResultActive=yes
EOL
```

Then run:
- ```sudo rm /var/crash/*```

### Remove “Authentication required to refresh system repositories” popup on login via XRDP

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

### [⇐ Previous](./7-git.md) | [Next ⇒](./9-wrapup.md)
