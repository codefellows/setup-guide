# Ops Setup

## Configure Remote Access
Now, let's configure your lab so that you can access its Graphical User Interface (called a GUI) from your home computer over your home network.

To do this we will first install a software package called `ssh`, which will give us access this Terminal on your lab computer from your home computer, allowing us to run commands just like we are now.

Second, we will install `xrdp`, which uses the Remote Desktop Protocol (often shortened to RDP), then set it to run automatically when the computer boots up.

Finally, we will configure the firewall to allow this network traffic.

### Install The `ssh` Software Package:
```bash
sudo apt install ssh -y
```
> Note: The `-y` option bypasses an "Are you sure?" prompt.

### Install The `xrdp` Software Package:
```bash
sudo apt install xrdp -y
```

### Set `xrdp` To Run Automatically
This will tell the computer to run `xrdp` whenever the computer boots up, ensuring that when you reboot, you'll still be able to connect remotely.
```bash
sudo systemctl enable --now xrdp
```
> Note: `ssh` is enabled and started automatically when it is installed, so we do not need to enable it like this.

### Create Firewall Rules
This instructs the firewall application to create rules allowing all traffic coming and going over network port 22 (used for SSH connections) and port number 3389 (used for RDP connections).

```bash
sudo ufw allow from any to any port 22 proto tcp
```

```bash
sudo ufw allow from any to any port 3389 proto tcp
```
---

### [⇐ Previous](./1-update.md) | [Next ⇒](./3-rdp-config.md)
