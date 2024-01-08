# Setting up WSL Version 2 and the Ubuntu app

## Overview

Windows has released a feature available to all PCs running on Windows 10 called Windows Subsystem for Linux, otherwise known as WSL. WSL gives you the ability to add a Linux distribution (aka "distro"), like Ubuntu Linux, and connect it directly to the Windows File System.

This guide will show you how to set up Ubuntu on your PC, and use it for software development.

## Install Instructions

Please read through these steps before getting started

**Follow the instructions line for line, pay attention to detail!!**

### Install the most recent version of Windows 10

For setting up a modern development environment, we will require that you're running the latest version of Windows 10 and have WSL Version 2 installed.

> **NOTE:** WSL 2 is only available in Windows 10 or greater, Version 2004, Build 19041 or higher. You may need to update your Windows version.

Check your windows version in settings before moving on. Click in the Windows Search box, and type "version", and hit enter. You'll see a System Information window telling you about your computer and OS. Confirm you are running 2004 or higher.

![Check the Build of your OS](https://p57.p1.n0.cdn.getcloudapp.com/items/4gujyKoO/Image%202020-06-15%20at%204.13.25%20PM.png?v=5b8a750ada301268081beb4e33d37077)

If your version is not a build higher than 19041, you'll need to do an update of Windows.  [Open this page](https://www.microsoft.com/en-us/software-download/windows10), and click the button that says "Download tool now". Run it, and allow it to update your current system's OS. This may take awhile.

### Enable WSL Feature in Windows

> **NOTE**: The following instructions are summarized from the [Microsoft WSL2 Upgrade Documentation](https://docs.microsoft.com/en-us/windows/wsl/install-win10#update-to-wsl-2)

1. In the Search box next to the Windows Menu, type `Turn Windows Features On Or Off` and hit enter.
1. A window will pop up with a list of folders with checkboxes next to them.
   - Scroll down and check the boxes for:
     - `Virtual Machine Platform`
     - `Windows Hypervisor Platform`
     - `Windows Subsystem for Linux`
   - If you are running Windows as a Virtual Machine (unlikely), also enable:
     - `Containers`
     - `Hyper-V (and as many sub-items as you can activate)`
1. Once this operation is complete, you will need to restart your system and then continue the steps below.
   - NOTE: This page might not open after restart, so be sure to make note of the url or bookmark it.

### Configure for WSL 2

Open Powershell on your computer with administrative access (right click on powershell and run as administrator).

Enter the following command to set your system default to WSL 2:

- `wsl --set-default-version 2`

CAREFULLY read the output you get from running that command. Click the output that you get on your system:

<details>
  <summary>
     <code>
        WSL 2 requires an update to its kernel component. For information please visit https://aka.ms/wsl2kernel
     </code>
  </summary>

You must update WSL a little further. [Open this page](https://aka.ms/wsl2kernel), and follow the instructions. When you finish with those instructions, try running the above command again.

</details>

<details>
   <summary>
      <code>
         For information on key differences with WSL 2 please visit https://aka.ms/wsl2
      </code>
   </summary>

Your system is all set, proceed with the following instructions here.

</details>

Run the following command in Powershell:

- `wsl --update`

### Install the Ubuntu app from the Windows Store

1. Open the Microsoft Store and install the "Ubuntu 20.04" App. If you can't find it, [view it online](https://apps.microsoft.com/store/detail/ubuntu-20045-lts/9MTTCL66CPXJ?hl=en-us&gl=us).
1. When the app is ready, it will prompt you to **Launch**. Click the Launch button. This will start the Ubuntu installation. This installation only happens the first time the app is launched, as it's the actual Ubuntu OS installing and mounting to your Windows file system. Anytime you uninstall the app and reinstall it you will have to do this process again. Make sure to back up important data if you ever uninstall this app, as it is not preserved.

NOTE: If the above installation fails:

1. Go [here](https://docs.microsoft.com/en-us/windows/wsl/install-manual).
1. Select the proper version: "Ubuntu 20.04", a download of an `.appx` file will occur.
1. Run this file, and it will do the same thing as the "Get" from the Windows Store.

NOTE: If neither of the above work, do this:

1. Click [here](https://docs.microsoft.com/en-us/windows/wsl/install-manual).
1. Select the proper version: "Ubuntu 20.04", a download of an `.appx` file will occur.
1. Run this file, and it will do the same thing as the "Get" from the Windows Store.

#### Finish Installing the Ubuntu App

1. It will ask you to enter a username.
1. It will then ask you to enter and confirm a password.
   - It's recommended it's not too long as you may have to type it a lot.
   - Also note that it will protect your password by not displaying ANYTHING at all to the screen, but it is registering your key strokes.
1. Finally, the prompt will change and you will be on a command line.
1. Type `pwd` to see where you currently are in the file system. You should be at `/home/<your username>`. **This is the root level of your Ubuntu user.**
   1. If your `pwd` output is not `/home/<your username>`, run the command `cd ~` and check again.
   1. If you are still not at `/home/<your username>`, get assistance.

#### Verify that you are running WSL Version 2

1. Open Command Prompt from the Windows search bar
1. Run the following command:

   - `wsl -l -v`
   - You should see a report such as this, which should confirm your WSL Version (NOTE: NAME may differ slightly)

     ```bash
     PS C:\Users\<yourname> wsl -l -v
     NAME                   STATE           VERSION
     Ubuntu-20.04           Running         2
     ```

1. If your version states version 1, you might need to take an additional step to update Ubuntu:
   - Enter the following command (NOTE: replace Ubuntu-20.04 with the actual version you installed):
   - `wsl --set-version Ubuntu-20.04 2`
   - This will take a fair amount of time to complete
   - Re-Run the command above to verify your version

Note: If you are having trouble getting Ubuntu-20.04 getting to version 2, follow the [Manual Installation Instructions](https://docs.microsoft.com/en-us/windows/wsl/install-manual#step-4---download-the-linux-kernel-update-package) from Microsoft.

> **TIP:** From now on when we refer to "Terminal" throughout this guide, you should open your Ubuntu Terminal application.

### 4. Continue with this setup guide

Once you have your system configured as above, you are ready to complete the required software installation process.

---

### [⇐ Previous](../../README.md) | [Next ⇒](./README.md)
