# Oh My Zsh

Now it's time to unleash your terminal's potential! In this section we'll update the terminal's look and feel, as well as add some color.

---

The following instructions are pulled from [Oh My Zsh.](https://ohmyz.sh/)

In your terminal, run the following command to install Oh My Zsh:

- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

<details>
  <summary>Click <strong>HERE</strong> only if you see a message similar to this image:
  </summary>

  Congratulations! If you see this message in your terminal, it means Oh My Zsh is already installed. Continue to the <a href="./7-node">next page!</a>
</details>

<img src="../../images/oh-my-zsh-verification.png" />


If you don't see a message in your terminal like the one above, continue with the setup steps.

**NOTE:** You may get a questions asking if you want to update your terminal to `zsh`. **Select `yes` for this.** If any warnings or errors occur, be sure to complete what is being suggested or get help.

> _AT THIS POINT YOU **`MUST`** RESTART YOUR TERMINAL_

---

## Confirming Setup

Re-open your terminal and run the following command to verify everything is still set up correctly:

- `brew --version`

<details>
  <summary>
  Click <strong>HERE</strong> if the output is <code>Homebrew 3.5</code> or higher
  </summary>

  You're ready to continue to the <a href="./7-node">next page.</a>

</details>

<details>
  <summary>
  Otherwise click <strong>HERE</strong> if you get an error such as <code>zsh: command not found: brew</code>

  </summary>

  <ul>
    <li>
      Run the following commands:
      <ol>
        <li><code>echo 'export BREW_HOME="/home/linuxbrew/.linuxbrew/bin"' >> $HOME/.zshrc</code></li>
        <li><code>echo 'export PATH="$PATH:$BREW_HOME"' >> $HOME/.zshrc</code></li>
        <li><code>reset</code></li>
      </ol>
    </li>
    <li> Check again for confirmation with the command:
      <ul>
        <li><code>brew --version</code></li>
        <li>You should see <code>Homebrew 3.5</code> or higher</li>
      </ul>
    </li>
  </ul>

  <strong>If you are still getting errors at this point, <a href="../../error/error">click here</a> and do not continue with the following steps until you have Oh My Zsh properly installed.</strong>

</details>

---

## Bookmark

Bookmark these sites to reference later through other classes as needed:

- Lots of customization available on their [Github repo.](https://github.com/ohmyzsh/ohmyzsh/)
- This is a link to a [cheatsheet.](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)

---

### [⇐ Previous](./5-tree.md) | [Next ⇒](./7-node.md)
