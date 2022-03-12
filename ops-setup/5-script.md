# Ops Setup

## Download and Start Setup Script

- Run `wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/deployelk.sh`
- Run `wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/install-bind.sh`
- Run `wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/install-virtualbox.sh`
- Run `wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/install-vscode.sh`
- Run `wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/labsetup.sh`
- Run `wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/gnome-terminal-profiles.dconf`
- Run `wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/uninstall-virtualbox.sh`

- Run `bash labsetup.sh` to execute the tool. Note that you should NOT run with `sudo` as the script privilege escalates on a per-command basis.

Budget an hour to keep an eye on the script execution and keep it moving. You may encounter occasional prompts for superuser password or to press OK/Enter to proceed. This is normal, because several processes have not been fully automated yet.

If you execute the script correctly, it will update the colors in your Linux terminal. These colors can be later changed in the terminal preferences menus if you don't like them or have  different terminal color preference.

Once the script finishes executing, you'll have a fully updated Ubuntu Linux OS with Virtualbox and internet connectivity.

---

### [⇐ Previous](./4-git.md) | [Thats all. Back To the Beginning](../README.md)
