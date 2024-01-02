# Oh My Zsh

Now it's time to unleash your terminal's potential! In this section we'll update the terminal's look and feel, as well as add some color.

---

## Install "Z Shell" (zsh)

1. Navigate to the [zsh downloads page](https://packages.msys2.org/package/zsh?repo=msys&variant=x86_64) in your browser.
2. Download the file linked on that page (it has a `.zst` extension).
3. Once downloaded, open your Downloads folder and double-click the file to expand it.
4. Open the "zsh package" folder and select all the files (etc and usr).
5. Copy those files (drag and drop) to your `C:\Program Files\Git` folder
6. Choose the "Overwrite" option if prompted.
7. Open your GitBash terminal and type `zsh` to enter begin the configuration process
8. Configure Z-Shell by pressing 0 to create the default environment settings
9. Enter the following commands to make zsh your default environment
   ```bash
   echo "if [ -t 1 ]; then" > ~/.bashrc
   echo "  exec zsh" >> ~/.bashrc
   echo "fi" >> ~/.bashrc
   ```

## Install "Oh My Zsh"

In your terminal, run the following command:

- `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

**NOTE:** You may get a questions asking if you want to update your terminal to `zsh`. **Select `yes` for this.** If any warnings or errors occur, be sure to complete what is being suggested or get help.

> _AT THIS POINT YOU **`MUST`** RESTART YOUR TERMINAL_

---

## Confirming Setup

Re-open your terminal and run the following command to verify everything is still set up correctly:

- `echo $0`

You should see `zsh` returned. This confirms that your setup is correct.

## Oh My Zsh References and Bookmarks

Bookmark these sites to reference later through other classes as needed:

- Lots of customization available on their [GitHub repo.](https://github.com/ohmyzsh/ohmyzsh/)
- This is a link to a [cheatsheet.](https://github.com/ohmyzsh/ohmyzsh/wiki/Cheatsheet)

---

### [⇐ Previous](./2-gh.md) | [Next ⇒](./4-vscode.md)
