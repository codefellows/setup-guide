# Ops Setup

## Configure Remote Access
Now, let's configure your lab so that you can access its Graphical User Interface (called a GUI) from your home computer over your home network.

To do this we will first install a software package called `xrdp`, which uses the Remote Desktop Protocol (often shortened to RDP), then set it to run automatically when the computer boots up, and finally configure the firewall to allow this network traffic.


### Install The `xrdp` Software Package:
```bash
sudo apt install xrdp -y
````
> N.B. The `-y` option bypasses an "Are you sure?" prompt.

### Set `xrdp` To Run Automatically
This will tell the computer to run `xrdp` whenever the computer boots up, ensuring that when you reboot, you'll still be able to connect remotely.
```bash
sudo systemctl enable --now xrdp
```

### Create A Firewall Rule
This instructs the firewall application to create a rule allowing all traffic coming and going over network port number 3389, which is the port used by RDP.

```bash
sudo ufw allow from any to any port 3389 proto tcp
```
---

### [⇐ Previous](./1-update.md) | [Next ⇒](./3-rdp-config.md)
