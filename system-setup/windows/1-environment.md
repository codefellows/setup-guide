# Backup Your Terminal/Shell Environment

This section will talk about how to update the Terminal's look and feel, as well as how to edit files using the command line editor, `nano`

At the end of this guide, we will add some color to your command line, and your command line will be formatted for development.

## Backing up files

The first thing we'll do is backup your existing terminal setup.

There are a lot of ways that your terminal can be set up determined by different configuration files.

We want to remove the old ways so we can start with a clean slate.

Make back ups of the files listed below. You may get a `No such file or directory` error for some of them. That's ok.

- `mv ~/.bashrc .bashrc.bak`
- `mv ~/.bash_profile .bash_profile.bak`
- `mv ~/.profile .profile.bak`
- `mv ~/.zprofile .zprofile.bak`
- `mv ~/.zshrc .zshrc.bak`

## Install Z Shell

```bash
sudo apt-get install zsh
```

After installing, type `zsh`. Zsh will ask you to choose some configuration. We will do this later by installing `oh-my-zsh`. Chose option 0 to create the config file (prevent this message to show again).

Now, let's move on to getting our development applications installed.

---

### [⇐ Previous](./README.md) | [Next ⇒](./2-apt.md)
