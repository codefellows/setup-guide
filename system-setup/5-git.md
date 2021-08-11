# Git

## Install Git

Run the following command to ensure that you have the most recent version of `git`:

`brew install git || brew upgrade git`

## Git Config

Like artists, programmers sign their work. Let's configure Git to sign your commits with your name and email address.

**WARNING:** Before running the following commands one line at at time, replace `YOUR FULL NAME` and `YOUR EMAIL ADDRESS` with the name and email from [Your GitHub Account](https://github.com/settings/profile)

```bash
git config --global user.name 'YOUR FULL NAME'
```

```bash
git config --global user.email 'YOUR EMAIL ADDRESS'
```

```bash
git config --global core.editor "code --wait"
```

## Set up SSH local

---
[GitHub Instructions: Gerarate SSH Key](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)

The following is taken from GitHub:

- Open your terminal and ensure you are at the root: `cd` and press enter.
- Run the following command `ssh-keygen -t ed25519 -C "YOUR EMAIL ADDRESS"` with the email used for GitHuba.
- You will be prompted to "Enter a file in which to save the key".  `Press Enter`
- At the next prompt enter a secure passphrase (Something you will remember)
- Enter the secure passphrase again.
- Start the ssh-agent by running `eval "$(ssh-agent -s)"`.
  - You will see an output similar to : > Agent pid 6323.  

> NOTE: Depending on your environment, you may need to use a different command. For example, you may need to use root access by running sudo -s -H before starting the ssh-agent, or you may need to use exec ssh-agent bash or exec ssh-agent zsh to run the ssh-agent.

### MAC Users Only

- Open the config file `nano ~/.ssh/config`
- Add the following to the editor:

```bash
Host *
  AddKeysToAgent yes
  UseKeychain yes
  IdentityFile ~/.ssh/id_ed25519
```

- Press `ctrl-x` then press `y` then press `enter`

### Set up SSH Local - All Continued

- Run the following: `ssh-add -K ~/.ssh/id_ed25519`

## Add SSH to GitHub

---
[GitHub Instructions: Add SSH Key to GitHub](https://docs.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account)

### Add SSH to GitHub Account - MAC Users

- Run `pbcopy < ~/.ssh/id_ed25519.pub` to copy key to ckipboard.

### Add SSH to GitHub Account - WSL / Linux Users

- Run the following commands:
- `sudo apt-get install xclip` installs xclip
- `clip -selection clipboard < ~/.ssh/id_ed25519.pub` to copy key to clipboard

### Add SSH to GitHuba Account - All

- Click on profile picture in upper right corner, click on settings.
- In the user setting sidebar, click "SSH and GPG keys"
- Click "New SSH key"
- In "Title" field, add a label for the key
- Paste your kiy into the "key" field
- Click "Add SSH Key"
- If prompted, confirm your GitHub password.

---

### [⇐ Previous](4-node) | [Next ⇒](6-tree)
