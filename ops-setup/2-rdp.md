# Ops Setup

## Configure Remote Access
Now, let's configure your lab so that you can access its Graphical User Interface (called a GUI) from your home computer over your home network.

To do this we will first install a software package called `xrdp`, which uses the Remote Desktop Protocol (often shortened to RDP), then set it to run automatically when the computer boots up, and finally configure the firewall to allow this network traffic.

1. In the terminal, run `sudo apt update` to update your Apt package manager.
   - You probably just did this in [previous step](./1-network.md), but you should **always run this command before using the Terminal to install a new software package**, and there is no harm in running it again.
1. Run `sudo apt install xrdp -y` to install the `xrdp` software package.
  - The `-y` option bypasses an "Are you sure?" prompt.
1. Instruct the OS to initialize the RDP server on startup by running `sudo systemctl enable --now xrdp` in the Terminal.
  - This ensures when you reboot, you'll still be able to connect remotely.
1. Run `sudo ufw allow from any to any port 3389 proto tcp` to instruct the firewall application to create a rule allowing all traffic coming and going over network port number 3389, which is the port used by RDP.

---

### [⇐ Previous](./1-network.md) | [Next ⇒](./3-ip.md)
