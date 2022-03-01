# VirtualBox Lab Setup

This tool sets up an Ubuntu Linux Desktop virtualization server PC.

## Summary

- Changes desktop and terminal color preferences
- Installs:
  - OpenSSH Server
  - Vim
  - Curl
  - VirtualBox
  - Microsoft Visual Studio Code
- Sets favorite apps on Ubuntu Desktop
- Configures a few XRDP settings to avoid issues

## Usage

### Physical PC

Here's a beginner-friendly breakdown of how to use this tool, assuming you've purchased a dedicated desktop PC that still needs the OS installed.

1. On your personal computer, create a bootable USB flash drive of Ubuntu Linux 20.10 Groovy Gorilla.
1. Plug monitor, power, keyboard, mouse, and ethernet into your new PC.
1. Insert the bootable USB flash drive of Ubuntu 20.10 into your new PC.
1. Boot into the installer software and install Ubuntu OS.
1. Reboot and remove your USB flash drive.
1. Log in and open a Terminal session.
1. `sudo apt update`
1. `sudo apt install xrdp -y`
1. Check your IP address with `ip a`
1. At this stage, remote into your Ubuntu computer from your host computer using RDP.
1. `sudo apt install git -y`
1. `mkdir ~/github`
1. `cd ~/github`
1. `git clone https://github.com/lee5378/labsetup.git`
1. `bash ~/github/labsetup/labsetup.sh` executes the tool. Note that you should NOT run with `sudo` as the script privilege escalates on a per-command basis.

Budget an hour to keep an eye on the script execution and keep it moving. You may encounter occasional prompts for superuser password or to press OK/Enter to proceed. This is normal, because several processes have not been fully automated yet.

### Virtual Machine

If you're using this on a VM just skip steps 1-5 and start on step 6 above.

## Testing

This has been tested on Ubuntu Linux 20.10 on both a physical PC and a VirtualBox VM.

## Contributions

PRs are welcome, please review open issues first.
