# VirtualBox Lab Setup

This tool sets up an Ubuntu Linux Desktop virtualization server PC.

Student-facing setup directions which this script accompanies can be found in the [Setup-Guide](https://codefellows.github.io/setup-guide/).

## Summary

- Changes desktop and terminal color preferences
- Installs:
  - Xrdp
  - VirtualBox
  - OpenSSH Server
  - Microsoft Visual Studio Code
  - Gnome-Tweaks
  - Wget
  - Curl
  - Git
  - Plocate
  - xdg-utils
  - Vim
  - Ranger
  - Tmux
  - Htop
- Sets favorite apps on Ubuntu Desktop
- Configures some cosmetic system features
- Configures a few XRDP settings to avoid issues
- Creates firewall rules to allow RDP and SSH traffic

## Usage

### Physical PC

Here's a beginner-friendly breakdown of how to use this tool, assuming you've purchased a dedicated desktop PC that still needs the OS installed.

1. On your personal computer, create a bootable USB flash drive of the current Long Term Support (LTS)version of Ubuntu Linux Desktop (e.g. Ubuntu 22.04 LTS Jammy Jellyfish).
1. Plug monitor, power, keyboard, mouse, and ethernet into your new PC.
1. Insert the bootable USB flash drive of Ubuntu into your new PC.
1. Boot into the installer software and install Ubuntu OS.
1. Reboot and remove your USB flash drive.
1. Log in and open a Terminal session.
1. `sudo apt update && sudo apt upgrade`
1. `wget -P ~/Downloads/ https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/lab-setup.sh`
1. `bash ~/Downloads/lab-setup.sh`

Budget an hour to keep an eye on the script execution and keep it moving. You may encounter occasional prompts for superuser password or to press OK/Enter to proceed. This is normal, because several processes have not been fully automated yet.

### Virtual Machine

If you're using this on a VM and do not need VirtualBox installed:
1. `wget -P ~/Downloads/ https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/VM-setup.sh`
1. `bash ~/Downloads/VM-setup.sh`

## Testing

This has been tested on Ubuntu Linux 22.04 LTS on both a physical PC and a VirtualBox VM.

## Contributions

PRs are welcome, please review open issues first.
