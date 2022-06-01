# Install Node Tools

In this step, we'll install Node.js.

## Verify if Node is already installed

- In your terminal, run: `node --version`
  - *If output is this version or higher*:
    - `v17.8.0`
    - Continue to [next page](./8-live-server.md)
  - *If output is not similar to the above*, continue with instructions on this page.

---

## Install Node

**Run:**

`brew install node`

It will take a minute for the download and installation process to complete.

Once it completes, ***you will need to exit*** your terminal, and log back in to demonstrate that the command works in a new shell.

- Verify your node version by running this:
  - `node --version`
  - Your output should be similar to this:
    `v17.8.0`

- Verify that Node.js works ...
  - Run the command: `node`
  - Type `5 + 5` and hit `enter`
  - The result should be `10`.  If you get `11` your computer is broken. ;)
  - **Quit** node by pressing **control C** two times.

Did you get similar output for both?

If not ... [head here](../error/error.md)

---

### [⇐ Previous](./6-ohmyzsh.md) | [Next ⇒](./8-live-server.md)
