# Git

## Install Git

Most systems have `git` pre-installed. Let's make sure that you have it, and install it, if not.

**Run:**

`git --version`

You might have a different version, but expected output should be similar to:

`git version 2.24.3 (Apple Git-128)`

*if* you have an installed version of git

Type `git config --list'
if you do not see something similar to the following, skip down to Git Config.  If you do, skip to next page.

```
user.name=YOUR NAME
user.email=YOUR EMAIL
core.editor=code --wait
```
NOTE: If you need to change your name / email, run the associated command below in the Git Config.

*else* install it, by running:

`brew install git`

*then* Repeat the validation step above

## Git Config

Like artists, programmers sign their work. Let's configure Git to sign your commits with your name and email address.

Make sure you sign up for an account at [GitHub](https://github.com)

**WARNING:** Before running the following commands one line at at time, replace `YOUR FULL NAME` and `YOUR EMAIL ADDRESS` with the name and email from [Your GitHub Account](https://github.com/settings/profile)

```bash
git config --global user.name 'YOUR FULL NAME'
```

```bash
git config --global user.email 'YOUR EMAIL ADDRESS'
```

```bash
git config --global core.editor "code --wait"
```

---

### [⇐ Previous](4-node.md) | [Next ⇒](6-tree.md)
