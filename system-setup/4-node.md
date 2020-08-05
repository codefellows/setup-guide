# Install Node & NPM

In this step, we'll install Node.js using `nvm`

## Install NVM

**Run:**

`brew install nvm`

It will take a few minutes for the download and installation process to complete.

**Once it completes, you will need to exit your terminal, and log back in so that the environment resets**

## Install Node

Now that 'nvm' (node version manager is installed), let's install node itself

- Run this command: `nvm install 12`
  - This will install Node.js, version 12. Verify this:
- Verify that nvm installed the version by running this:
  - `nvm ls`
  - Your output should look similar to this:

    ```bash
    ->     v12.18.0
    default -> 12 (-> v12.18.0)
    node -> stable (-> v12.18.0) (default)
    stable -> 12.18 (-> v12.18.0) (default)
    iojs -> N/A (default)
    unstable -> N/A (default)
    ```

- Verify your node version by running this:
  - `node --version`
  - Your output should be similar to this:
    `v12.18.0`

- Verify that Node.js works ...
  - Run the command: `node`
  - Type `5+5` and hit `enter`
  - The result should be `10`.  If you get `11` your computer is broken.
  - **Quit** node by pressing **control C** two times.

Did you get similar output for both?

If not ... [head here](../error/error.md)

---

### [⇐ Previous](./3-homebrew.md) | [Next ⇒](./5-git.md)
