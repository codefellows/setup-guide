# Git

Git is a free, open-source distributed version control system. You'll use it to track the history of changes to your files, collaborate with others, and more!

---

## Verify if Git & GitHub are already installed:

**_If this is your first time going through the setup guide on your current machine, skip this "Verify" section and move on to the "Install" section below_**

In your terminal, run:

- `git config --list`

> **IF** the output is similar to:
>
> ```bash
>   user.name=[Your name is here]
>   user.email=[Your email is here]
>   code.editor=code --wait
>   init.defaultbranch=main
> ```
>
> Then move on to [next page](./5-tree.md)
>
> ---
> **else if** the output is not similar to the above:
>
> Continue with instructions on this page.

**Note**: To exit the `git config --list` screen, type the letter `q` in your terminal

---

## Install and Configure Git and GitHub

Run the following command to ensure that you have the most recent version of git:

- `brew install git || brew upgrade git`

## Setup GitHub for "Authentication"

In order to use Git locally in a secure manner, we need to connect our computer with github.com. (_For further information about this process, visit [GitHub Instructions: Caching GitHub credentials](https://docs.github.com/en/get-started/getting-started-with-git/caching-your-github-credentials-in-git)_)

Install CLI by completing the following steps:

- Run in terminal:
  - `brew install gh`
- Once it's complete, run:
  - `gh auth login`
- Use arrow keys to select **GitHub.com**
- Select **HTTPS**
- When prompted with `Authenticate Git with your GitHub credentials (Y / n)`,   press `y` and enter
- Select **Login with a web browser**
- Copy the one time code shown in yout terminal and then press enter.  This will open Github.com in a web page.
- If not signed in, you will be prompted to sign in.
- Github will prompt you for the one time code you copied from the terminal.  Paste/enter it in the appropriate boxes.
- Click **Authorize Github**
- You can close the web browser and press enter in your terminal to continue.

## Git Config

Like artists, programmers sign their work. Let's configure Git to sign your commits with your name and email address.

**WARNING:**

Before running the following commands one line at at time, use the arrow keys or backspace/delete keys on your keyboard to move your cursor.

Replace `YOUR FULL NAME` and `YOUR EMAIL ADDRESS` inside the single quotes with the name and email from [Your GitHub Account](https://github.com/settings/profile)

- `git config --global user.name 'YOUR FULL NAME'`
- `git config --global user.email 'YOUR EMAIL ADDRESS'`
- `git config --global core.editor "code --wait"`
- `git config --global init.defaultbranch main`

---

### [⇐ Previous](./3-homebrew.md) | [Next ⇒](./5-tree.md)
