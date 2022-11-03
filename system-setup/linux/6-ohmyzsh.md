# Oh-My-Zsh

Now it's time to unleash your terminal potential.

## Verify if Oh-My-Zsh is already installed

- In your terminal, run: `zsh --version`
  - _If output is this version or higher_:
    - `zsh 5.8`
    - Continue to [next page](./7-node.md)
  - _If output is not similar to the above_, continue with instructions on this page.

---

## Installation

The following is pulled from [Oh My Zsh.](https://ohmyz.sh/)

Run the following command in your termainl.

`sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

> **NOTE:** You may get a questions asking if you want to update your terminal to `zsh`. Say `yes` to this. If any warnings or errors occur, be sure to complete what is being suggested or get help.

At this point you **`must`** restart your terminal.

## **Confirmation**

- Re-open your terminal and run the command: `brew --version`

  - If the terminal outputs `Homebrew 3.5` or greater:
    - You're ready to continue through the setup guide.
  - **If you get an error** such as `zsh: command not found: brew`, then run the following commands:

    - `echo 'export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"' >> $HOME/.zshrc`
    - `echo 'export PATH="$PATH:$BREW_HOME"' >> $HOME/.zshrc`
    - `reset`
    - Confirm with the command: `brew --version`

      Expected output:

      ```js
      Homebrew 3.5 or greater
      ```

## Bookmark

Bookmark these site to reference later through other classes as needed.

Lots of customization avaliable on their [github repo.](https://github.com/ohmyzsh/ohmyzsh/)

This is a link to a [cheatsheet.](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)

---

### [⇐ Previous](./5-tree.md) | [Next ⇒](./7-node.md)
