# Node.js Tools

Node.js includes everything you need to execute a program written with JavaScript.

---

## Verify if Node.js is already installed

**_If this is your first time going through the setup guide on your current machine, skip this "Verify" section and move on to the "Install" section below_**

In your terminal, run:

- `node --version`

> **IF** the output is this version or higher:
>
> ```text
> v17.8.0
> ```
>
> Continue to [next page](./7-live-server.md)
>
> ---
>**else if** the output is not similar to the above:
>
> Continue with instructions on this page.

---

## Install Node.js

Run the command:

- `brew install node`

It will take a minute for the download and installation process to complete.

> _AT THIS POINT YOU **`MUST`** RESTART YOUR TERMINAL_

After restarting, verify your Node.js version by running the command:

- `node --version`

Expected output should be this version or higher:

> ```text
> v17.8.0
> ```

Verify that Node.js is working:

- Run the command:
  - `node`
- Type `5 + 5` and hit enter
  - The result should be `10`.  If you get `11` your computer is broken. ;)
  - **Quit** node by pressing **control C** two times.

Did you get similar output for both?

If not ... [head here](../../error/error.md)

---

### [⇐ Previous](./5-ohmyzsh.md) | [Next ⇒](./7-live-server.md)
