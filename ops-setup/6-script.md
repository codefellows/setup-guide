# Ops Setup

We've finished the most important parts of setting up your lab.

For the remaining setup and configuration, we will download and run a script, which will be easier than running each command yourself.
> A "script" is a set of instructions for the computer to follow, just like it has been following each of the commands you have typed into the Terminal.

### Download and Run the Setup Script
1. Run `sudo apt install wget -y` in the terminal to install `wget`.
   > `wget` is a utility which lets us retrieve files hosted online.
1. Run `wget -P ~/Downloads/ https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/lab-setup.sh` to save the setup script to you Downloads directory.
1. Use `cd ~/Downloads` to move to your Downloads directory, then run `ls` to list the contents of the directory. You should see `lab-setup.sh` present.
1. To execute the script, run `bash lab-setup.sh`.

Budget an hour to keep an eye on the script execution and keep it moving. You may encounter occasional prompts for superuser password or to press OK/Enter to proceed. This is normal, because several processes have not been fully automated.

### Wrap-Up:

Once the script finishes executing, your Ubuntu Linux OS will be nicely configured for use as a remotely accessible lab, and a handful of potentially useful applications will have been installed.

Among other things, the colors in your Linux terminal should have changed. These colors can be changed again in the terminal preferences menus if you don't like them or just want to experiment.

### Further Exploration:

If you are curious about what was installed or how the setup script worked, you can find all the code that was run in the `~/Downloads/install-script/` directory. Have fun!
> You can view the contents of any file by using the `cat` command. Try running `cat lab-setup.sh` to see what was in the script you just ran. Does any of the code look familiar?
> Remember, you can use `cd` change directories, and `ls` to list the contents of a directory.

---

### [⇐ Previous](./5-git.md) | [Back To the Beginning](../README.md)
