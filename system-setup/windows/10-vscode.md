# Install VSCode Text Editor

Now it's time to install the Visual Studio Code (VSCode) Text Editor, a sophisticated text editor for code, markup, and prose.

> **Follow the below instructions in order**, paying attention to any notes specific to your operating system.

---

## Get Started

- **_Close any open terminal windows!!!_**
- Download [VSCode](https://code.visualstudio.com/download) and install.
- If this window displays during set up, be sure the following boxes are selected
![VSCode](../vscode.png)

> _These next instructions have a **very specific** order for Windows Users_. Please read carefully.

- Open VSCode
- On the bottom left hand side you will see a settings ("gear") icon.
- Click this, then select "Extensions".
- A side-bar will slide out and at the top you can search for extensions.
- Search for "WSL" and click the "Install" button
- Close VSCode
- Re-open your terminal
- Run the following command in your terminal:
  - `sudo apt-get install wget ca-certificates`
- Once that is complete, run the following command in your terminal to launch VSCode with Remote WSL:
  - `code .`

---

### Install Additional Required VSCode Extensions

We'll now be adding some functionality to your new code editor with a few more extensions.

Just as you did before, search for and install the following extensions:

(_You will not need to close VSCode or your terminal in between each one, that step was specific to Remote WSL._)

- liveserver
- ESLint
- markdownlint
- editorconfig
- HTML Preview
- Thunder Client

There are many other extensions to choose from that will make your coding life a lot easier. Your instructors, TAs and classmates will all be great resources as to what works well for them.

[VSCode's documentation](https://code.visualstudio.com/docs) is excellent. Review it now to familiarize yourself with the basics.

---

### [⇐ Previous](./9-eslint.md) | [Next ⇒](./11-verify.md)
