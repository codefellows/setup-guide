# Install "Homebrew"

Homebrew is a tool that simplifies installing applications on your machine. Think of it like an app store for your computer

1. In your terminal, enter the following command:
   - `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"`
   - You will be prompted several times along the way. Accept all the defaults and say "Yes" when prompted
   - **MAC Users**
     - You will likely be prompted to install XCode command line tools. Say "Yes"
   - **Linux and Windows Users**
     - Once the main installation finishes (could take up to 30 minutes), enter these commands, one at a time in your terminal:
     - `test -d ~/.linuxbrew && eval $(~/.linuxbrew/bin/brew shellenv)`
     - `test -d /home/linuxbrew/.linuxbrew && eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)`
     - The commands should produce no errors and do not produce success messages.

Once the installation has completed, **run:**

 `brew doctor`

**if** return output is:

```bash
Your system is ready to brew
```

**or** return output is:

```text
Please note that these warnings are just used to help the Homebrew maintainers
with debugging if you file an issue. If everything you use Homebrew for is
working fine: please don't worry or file an issue; just ignore this. Thanks!
```

**then run:**

`brew update`

**else if**  return output is:

```bash
brew: command not found

(or any other errors)
```

**then** [click here](../error/error.md) do not continue with the following steps until you have Homebrew properly installed

## Install "gcc" (Windows Users Only)

In order for Homebrew to install other applications, it needs a tool called **gcc** to assist itself.

Run this command in your terminal:

`brew install gcc`

When that completes, you will be returned to the command prompt and can move on to the next steps.

---

### [⇐ Previous](./2-apt.md) | [Next ⇒](./4-git.md)
