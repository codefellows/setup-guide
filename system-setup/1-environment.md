# Setup Your Terminal/Shell Environment

This section will talk about how to update the Terminal's look and feel, as well as how to edit files using the command line editor, `nano`

At the end, this will add some color to your command line, and your command line will be formatted for development.

## Updating the .profile file

The first thing we'll do is get our environment setup properly, so that all of our commands will work properly as we're getting things going.

### Backing up files

There are a lot of ways that your terminal can be set up determined by different configuration files.

We want to remove the old ways so we can start with a clean slate.

Make back ups of the files listed below. You may get a `No such file or directory` error for some of them. That's ok.

- `mv ~/.bashrc .bashrc.bak`
- `mv ~/.bash_profile .bash_profile.bak`
- `mv ~/.profile .profile.bak`
- `mv ~/.zshrc .zshrc.bak`

### WSL / Ubuntu

From your terminal, run this command

`curl -s https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/.profile >> ~/.profile`

You will not see a success message. Once it completes, log out of your terminal, and then back in again. Your prompt should change slightly, with a different set of colors

### Mac

From your terminal, run these commands

`echo 'source $(brew --prefix nvm)/nvm.sh' >> ~/.profile`

`curl -s https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/.zshrc >> ~/.zshrc`

## Reset Your Environment

The changes you just made will take effect every time you re-open your terminal. But right now, we want to see those changes immediately, so let's "source it" by running:

- Use your down arrow key to scroll to the bottom of the file and add this after the last line

`cd ~` - This makes sure you are in your home directory.

`echo cd ~ >> .profile`

`source ~/.profile`

- NOTE: You will see an error along the lines of `-bash: /home/linuxbrew/.linuxbrew/bin/brew: No such file or directory`.  This is ok for now.

Now, let's move on to getting our development applications installed

---

### [⇐ Previous](./README.md) | [Next ⇒](./2-apt.md)
