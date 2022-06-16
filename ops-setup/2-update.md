# Ops Setup

## Update Linux

- Log in to Ubuntu Linux Desktop and open a Terminal session.
- Search for "Terminal" in the menu system and be sure to favorite this app.
- Run `sudo apt update` to update your Apt package manager.
  - **NOTE: Always run this command before installing a new software package from Apt.**
- Run `sudo apt install xrdp -y`, which installs a software package that will allow you to connect to this lab kit PC remotely in subsequent classes.
  - The `-y` option bypasses an "Are you sure?" prompt.
- Allow the RDP server to initialize on startup with `sudo systemctl enable --now xrdp`.
  - You'll need this in in a later class.

---

### [⇐ Previous](./1-network.md) | [Next ⇒](./3-ip.md)
