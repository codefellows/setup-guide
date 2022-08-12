# Install VSCode Text Editor

Now it's time to install VSCode Text Editor, a sophisticated text editor for code, markup, and prose.

> **Follow the below instructions in order**, paying attention to any notes specific to Windows or Mac, depending on your operating system.

## Get Started

- Close any open terminal windows.
- Download [VSCode](https://code.visualstudio.com/download) and install.

### Windows Users

- If this window displays during set up, be sure the following boxes are selected
![VSCode](../vscode.png)

- Open VSCode
- Install the Remote WSL Extension. To do this:
  - On the bottom left hand side you will see a settings ("gear") icon. 
  - Click this, then click "Extensions".
  - A side-bar will slide out and at the top you can search for extensions.
  - Click "install" on the extension you want.
- Close VSCode
- Re-open your terminal
- Run the following command in your terminal:
  - `sudo apt-get install wget ca-certificates`
- Once that is complete, run the following command in your terminal to launch VSCode with Remote WSL:
  - `code .`

### Install Additional VSCode Extensions

We'll now be adding some functionality to your new code editor!

Install the following extensions:

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
