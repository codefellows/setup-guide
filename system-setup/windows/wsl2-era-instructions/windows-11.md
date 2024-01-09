# Setting up WSL Version 2 and the Ubuntu app

## Overview

Windows has released a feature available to all PCs running on Windows 11 called Windows Subsystem for Linux, otherwise known as WSL. WSL gives you the ability to add a Linux distribution (aka "distro"), like Ubuntu Linux, and connect it directly to the Windows File System.

This guide will show you how to set up Ubuntu on your PC, and use it for software development.

## Install Instructions

Please read through these steps before getting started

### Install the most recent version of Windows 11

For setting up a modern development environment on Windows 11, we will require that you're running the latest version and have WSL Version 2 installed.

### Enable WSL Feature in Windows

> **NOTE**: The following instructions are summarized from the [Microsoft WSL2 Installation Documentation](https://docs.microsoft.com/en-us/windows/wsl/install){:target="_blank"}

1. Open Powershell on your computer with administrative access (right click on powershell and run as administrator).
2. Run the following commands:

   ```bash
   wsl --install
   wsl --update
   ```

3. You may be prompted to reboot your machine.

#### Verify that you are running WSL Version 2

1. Open Powershell
1. Run the following command:

   - `wsl -l -v`
   - You should see a report such as this, which should confirm your WSL Version

     ```bash
     PS C:\Users\yourname> wsl -l -v
     NAME                   STATE           VERSION
     Ubuntu-20.04           Running         2
     ```

### Open the Ubuntu Application

This will be found in your start menu. It's a good idea to "Right Click" it's icon from the task bar and "Pin" it for easier access in the future.

> **TIP:** From now on when we refer to "Terminal" throughout this guide, you should open your Ubuntu Terminal application.

### 4. Continue with this setup guide

Once you have your system configured as above, you are ready to complete the required software installation process.

---

### [⇐ Previous](../../README.md) | [Next ⇒](./README.md)
