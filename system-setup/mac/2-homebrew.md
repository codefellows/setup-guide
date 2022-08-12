# Install "Homebrew"

Homebrew is a tool that simplifies installing applications on your machine. Think of it like an app store for your computer.

---

## Verify if Homebrew is already installed

- In your terminal, run: `brew --version`
  - *If output is similar to:* `Homebrew 3.4.11`
    - Run: `brew update` to get latest updates
    - Move on to [next page](./3-git.md)
  - *If output is not similar to the above*, continue with instructions on this page.

---

In your terminal, enter the following command:

- `/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"`

- You will be prompted several times along the way. Enter your password when prompted, accept all the defaults, say "Yes" if prompted. (***Note:*** *You will not have any visual feedback on your screen as you type. It is protecting your password by not displaying ANYTHING at all to the screen, but it is registering your key strokes.*)

- You will likely be prompted to install XCode command line tools. Say "Yes".

- When it completes, follow the "Next steps:" instructions displayed in your terminal, which should be similar to:
  - ```echo 'eval "$(`which brew` shellenv)"' >> $HOME/.zprofile```
  - ```eval "$(`which brew` shellenv)"```

Once the installation has completed, **run:**

- `brew doctor`

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

- `brew update`

**else if**  return output is:

```bash
brew: command not found
```

> **Then [Click here](../../error/error.md) and do not continue with the following steps until you have Homebrew properly installed**

When that completes, you will be returned to the command prompt and can move on to the next steps.

---

### [⇐ Previous](./1-environment.md) | [Next ⇒](./3-git.md)
