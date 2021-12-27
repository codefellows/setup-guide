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
- `mv ~/.zshrc .zshrc.bak`

## Adds functionality to applications we are about to install

Copy and paste the following to your terminal (all at once)

```text
echo '# NVM' >> ~/.zshrc
echo 'export NVM_DIR="$HOME/.nvm"
[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"' >> ~/.zshrc
echo '[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"' >> ~/.zshrc
```

Now, let's move on to getting our development applications installed

---

### [⇐ Previous](./README.md) | [Next ⇒](./2-apt.md)
