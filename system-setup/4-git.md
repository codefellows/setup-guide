# Git

## Verify if Git & GitHub are already installed:

- In your terminal, run: `git config --list`
- **Note**: To exit the git config --list screen, type the letter `q` in your terminal
  - *If the output is similar to:*

    - ```bash
      user.name=[Your name is here]
      user.email=[Your email is here]
      code.editor=code --wait
      init.defaultbranch=main
      ```

    - Then move on to [next page](./5-tree.md)
  - *If output is not similar to the above*, continue with instructions on this page.

---

## Install and Configure Git and GitHub

Run the following command to ensure that you have the most recent version of `git`:

`brew install git || brew upgrade git`

## Setup GitHub for "Authentication"

In order to use Git locally in a secure manner, we need to connect our computer with github.com.

[GitHub Instructions: Caching GitHub credentials](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)

- Install CLI by completing the following steps:
  - run in terminal: `brew install gh`
  - run in terminal: `gh auth login`
  - Use arrow key to select **GitHub.com**
  - Select **HTTPS**
  - When prompted with Authenticate Git with your GitHub credentials (Y / n).  Press `y` and enter
  - Click **Login with a web browser**
  - Copy the one time code shown in yout terminal and then press enter.  This will open github.com in a web page.
  - If not signed in, you will be prompted to signin.
  - Github will prompt you for the one time code.  Enter in the appropriate boxes.
  - Click **Authorize github**
  - You can close the web browser and press enter in your terminal to continue.

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

```bash
git config --global init.defaultbranch main
```

### [⇐ Previous](./3-homebrew.md) | [Next ⇒](./5-tree.md)
