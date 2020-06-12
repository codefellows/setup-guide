# Setup Your Terminal/Shell Environment

This section will talk about how to update the Terminal's look and feel, as well as how to edit files using the command line editor, `nano`

At the end, this will add some color to your command line, and your command line will be formatted for development.

## Updating the .profile file

The first thing we'll do is get our environment setup properly, so that all of our commands will work properly as we're getting things going.

From your terminal, run this command

`curl -s https://raw.githubusercontent.com/codefellows/setup-guide/master/configs/.profile >> ~/.profile`

Once it completes, log out of your terminal, and then back in again. Your prompt should change slightly, with a different set of colors

Now, let's move on to getting our development applications installed

## Reset Your Environment

The changes you just made will take effect every time you re-open your terminal. But right now, we want to see those changes immediately, so let's "source it" by running:

`source ~/.profile`

## Mac Users

If you are using a Mac, chances are your shell is `zsh` which means we'll need to take one more step to tell it to use these new settings.

**RUN**:

`echo 'source ~/.profile' >> ~/.zshrc`

---

### [⇐ Previous](./README.md) | [Next ⇒](./2-apt.md)
