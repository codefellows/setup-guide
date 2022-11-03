# Ops Setup

Now, let's get your system configured for remote access.

## Update Packages

1. Log in to Ubuntu Linux Desktop and open a Terminal session.
   - To do this, search for "Terminal" in the menu system. 
   - Be sure to favorite this app for easy access in the future.
1. Run `sudo apt update` in the terminal to update your Apt package manager.
  - **Always run this command before installing a new software package from Apt.**
1. Run `sudo apt install xrdp -y`, which installs a software package that will allow you to connect to this lab kit PC remotely in subsequent classes.
  - The `-y` option bypasses an "Are you sure?" prompt.
1. Allow the RDP server to initialize on startup. Run `sudo systemctl enable --now xrdp` in the terminal.
  - This ensures when you reboot, you'll still be able to connect remotely.

---

### [⇐ Previous](./1-network.md) | [Next ⇒](./3-ip.md)
