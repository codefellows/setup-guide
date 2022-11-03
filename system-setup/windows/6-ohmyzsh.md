# Oh-My-Zsh

Now it's time to unleash your terminal's potential! In this section we'll update the terminal's look and feel, as well as add some color.

---

## Verify if Oh-My-Zsh is already installed

**_If this is your first time going through the setup guide on your current machine, skip this "Verify" section and move on to the "Install" section below_**

In your terminal, run:

- `zsh --version`

> **IF** the output is this version or higher:
>
> ```bash
> zsh 5.8
> ```
>
> Continue to the [next page](./7-node.md)
>
> ---
> **else if** the output is not similar to the above:
>
> Continue with instructions on this page.

---

## Install Oh My Zsh

The following instructions are pulled from [Oh My Zsh.](https://ohmyz.sh/)

Run the following command in your terminal:

- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`
  - **NOTE:** You may get a questions asking if you want to update your terminal to `zsh`.
  - **Select `yes` to this.** If any warnings or errors occur, be sure to complete what is being suggested or get help.

> _AT THIS POINT YOU **`MUST`** RESTART YOUR TERMINAL_

---

## Confirming Oh My Zsh

Re-open your terminal and run the following command to verify everything is still set up correctly:

- `brew --version`

> **IF** the output is this version or higher:
>
> ```bash
> Homebrew 3.5
> ```
>
> You're ready to continue through the setup guide.
>
>---
> **else if** you get an error, such as:
>
> ```bash
> zsh: command not found: brew
> ```
>
> then run the following commands:
>
> - `echo 'export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"' >> $HOME/.zshrc`
> - `echo 'export PATH="$PATH:$BREW_HOME"' >> $HOME/.zshrc`
> - `reset`
>
> Check again for confirmation with the command:
>
> - `brew --version`
>
> Expected output should be this version or higher:
>
> ```bash
> Homebrew 3.5
> ```

**If you are still getting errors at this point, [click here](../../error/error.md) and do not continue with the following steps until you have Oh-My-Zsh properly installed**

---

## Bookmark

Bookmark these site to reference later through other classes as needed.

Lots of customization avaliable on their [github repo.](https://github.com/ohmyzsh/ohmyzsh/)

This is a link to a [cheatsheet.](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)

---

### [⇐ Previous](./5-tree.md) | [Next ⇒](./7-node.md)
