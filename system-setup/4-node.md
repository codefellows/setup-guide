# Install Node Tools

In this step, we'll install Node.js using `nvm`

## Install NVM

**Run:**

`brew install nvm`

It will take a few minutes for the download and installation process to complete.

Carefully follow the instructions in the resulting output of that command.

Once it completes, you will need to exit your terminal, and log back in to demonstrate that the command works in a new shell.

You will then need to add a hidden folder for nvm.  Run the following:
`mkdir ~/.nvm`

## Install Node

Now that 'nvm' (node version manager is installed), let's install node itself

- Run this command: `nvm install --lts`
  - This will install the latest stable version of Node.js. Verify this:
- Verify that nvm installed the version by running this:
  - `nvm ls`
  - Your output should look similar to this (version numbers may differ):

    ```bash
    ->     v14.16.1
    iojs -> N/A (default)
    unstable -> N/A (default)
    node -> stable (-> v14.16.1) (default)
    stable -> 14.16 (-> v14.16.1) (default)
    lts/* -> lts/fermium (-> v14.16.1)
    lts/argon -> v4.9.1 (-> N/A)
    lts/boron -> v6.17.1 (-> N/A)
    lts/carbon -> v8.17.0 (-> N/A)
    lts/dubnium -> v10.24.1 (-> N/A)
    lts/erbium -> v12.22.1 (-> N/A)
    lts/fermium -> v14.16.1
    ```

- Verify your node version by running this:
  - `node --version`
  - Your output should be similar to this:
    `v14.16.1`

- Verify that Node.js works ...
  - Run the command: `node`
  - Type `5 + 5` and hit `enter`
  - The result should be `10`.  If you get `11` your computer is broken. ;)
  - **Quit** node by pressing **control C** two times.

Did you get similar output for both?

If not ... [head here](../error/error.md)

---

### [⇐ Previous](./3-homebrew.md) | [Next ⇒](./5-git.md)
