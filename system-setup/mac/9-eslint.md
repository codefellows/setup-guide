# ESLint and Folder Structure

## Verify if ESLint is already installed

- In your terminal, run: `eslint --version`
  - *If output is this version or higher*:
    - `v6.7.2`
    - Continue to [next page](./10-vscode.md)
  - *If output is not similar to the above*, continue with instructions on this page.

---

## Install ESLint

**Run:**

`npm install -g eslint`

You should see a lot of feedback as it installs.

After it has completed,  **run:**

`eslint --version`

You should see something similar:

```bash
v6.7.2
```

## Folder Structure

Can you predict what these commands will do?

Type each of the following commands, one line at a time, to create a folder structure where you will store code on your computer:

```bash
cd ~
mkdir projects
cd projects
mkdir courses
cd courses
pwd
```

You should see an output similar to this:
`/home/your_user_name/projects/courses`

This is the place to clone repositories for labs

---

### [⇐ Previous](./8-live-server.md) | | [Next ⇒](./10-vscode.md)
