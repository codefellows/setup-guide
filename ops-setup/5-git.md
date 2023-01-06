# Ops Setup

You'll use the `git` command for managing the Ops scripts you write and for many other things. Let's set it up now.

## Git Installation

1. Run `sudo apt install git -y` in the terminal to install Git.

## Git Configuration

Now that Git is installed, we need to do a little bit of configuration.

1. Run `git config --global user.name "J.R. Hackworth"`, replacing "J.R. Hackworth" with your own name.
   - Make sure you put your name in quotes, e.g. "Tony Stark", or "Bruce Wayne". The quotes let the computer know to treat the name as one piece of information. Otherwise the computer will read "Tony" and "Stark" as separate things!
1. Run `git config --global user.email jrhackworth@example.com`, this time filling in the email address you used to set up your account on github.com.

## Prepare a space for Git repositories

Among other things, Git can be used to "clone down a git repository", which has the effect of copying a folder and all its files and subfolders from where they are hosted online.

Before we do that, let't create a place to store these respositories.

1. Run `mkdir ~/github` to create a folder to store repositories.
   - `mkdir` is the command to "make directory, which is another name for a folder.
1. Run `cd ~/github` to move there.
   - `cd` is the "change directory" command, which is how you can change the "current folder" you are working in within the Terminal.

---

### [⇐ Previous](./4-virtualbox.md) | [Next ⇒](./6-cloning.md)
