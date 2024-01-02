# ESLint and Folder Structure

ESLint is a tool that will help you find and fix problems with your JavaScript. Think of it like using a spell checker or grammar checker, but for writing JavaScript!

This page will also be getting your folder structure set up. Where will you put your code projects? How will you organize between one class course and the next? We'll get you started.

---

## Verify if ESLint is already installed

**_If this is your first time going through the setup guide on your current machine, skip this "Verify" section and move on to the "Install" section below_**

In your terminal, run:

- `eslint --version`

> **IF** the output is this version or higher:
>
> ```text
> v8.1.0
> ```
>
> Continue to the [next page](./10-vscode.md)
>
> ---
> **else if** the output is not similar to the above:
>
> Continue with instructions on this page.

---

## Install ESLint

In your terminal, run the command:

- `npm install -g eslint`

You should see a lot of feedback as it installs. Verify eslint is installed by running the command:

- `eslint --version`

Expected output should be this version or higher:

> ```text
> v8.1.0
> ```

If not ... [head here](../../error/error.md)

---

## Setting Up Your Folder Structure

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

> ```bash
> /home/your_user_name/projects/courses
> ```

The next step is to create another new directory for your current course, here inside the "courses" directory.

If you are in 102, create a 102 directory, if you are in 201, create a 201 directory, etc.

> ```bash
> # EXAMPLE
> mkdir code-102
> # OR
> mkdir code-201
> # ETC ...
> ```

That is where you will clone repositories and do your work for labs in this course.

---

### [⇐ Previous](./8-live-server.md) | | [Next ⇒](./10-vscode.md)
