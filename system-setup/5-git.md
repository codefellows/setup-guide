# Git

## Install Git

Run the following command to ensure that you have the most recent version of `git`:

`brew install git || brew upgrade git`


## Git Config

Like artists, programmers sign their work. Let's configure Git to sign your commits with your name and email address.

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

### [⇐ Previous](4-node) | [Next ⇒](6-tree)
