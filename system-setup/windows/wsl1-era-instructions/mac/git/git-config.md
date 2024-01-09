# Git Config

## Make sure you have your Github username and password.

<img src="../images/github-example.png" width="500" height="500">

**Run** all three `commands` below ...  **one at a time.**

NOTE: Use single quotations as below.

```
git config --global user.name 'REPLACE WITH YOUR GITHUB USERNAME'
```
```
git config --global user.email 'REPLACE WITH YOUR EMAIL'
```
```
git config --global core.editor 'code --wait'
```
---
**Now run:**

`cat ~/.gitconfig`

Expected output:

```
[core]
	editor = code --wait
[user]
	name = yourUserName
	email = yourEmail@mail.com
```

---

Did you get the expected output?

[Yes](../vs-code/extensions.md)

[No](../../error/error.md)

---
### [⇐ Previous](../git/install-git.md)