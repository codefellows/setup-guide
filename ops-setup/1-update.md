# Ops Setup

## Confirm Network Connection

Your first step is ensure that your lab PC is connected to the internet, so you can update the operating system.

1. Log in to Ubuntu Linux Desktop

1. Verify that your lab PC is connected to the internet via ethernet or Wi-Fi by opening a web browser on your PC accessing a web page (such as https://www.wikipedia.org/).

## Update Packages and OS 

Next we are going to make sure that all of the software packages and the operating system is up to date.

1.  Open a Terminal session by searching for "Terminal" in the menu system. 
1. In the terminal, type the following command and hit Enter to update your Apt package manager:
```bash
sudo apt update
```
   - **Always run this command before using the Terminal to install a new software package.**
   - You will be prompted to enter your password, but when you type no characters will appear -- this is normal when working in the Terminal! Just enter your password and hit Enter. If you don't get it right the first time, just try again.
1. Once the last command has completed and you return to the command prompt, run the following to apply all available updates to your system:
```bash
sudo apt upgrade
```
   - The running command will pause and ask "`Do you want to continue? [Y/n]`". Type "`y`" and press Enter.
   - This step may take some time, so be patient. When it has completed it will return you to the command prompt.
1. Check for further software and OS updates by searching for "Software Updater" in the menu system, letting it check for updates, and clicking "Install Now" if there are updates available, "OK" if there are not, or "Reboot Now" if that is suggested.


---

### [⇐ Previous](../README.md) | [Next ⇒](./2-remote-access.md)
