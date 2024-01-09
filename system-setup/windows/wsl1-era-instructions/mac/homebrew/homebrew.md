# Install Homebrew

NOTE: Be sure to agree when asked to install the XCode Command Line Tools.  You will be prompted to enter your mac password.  **You will not be able to see what you are typing but it is registering your key-strokes.**

**Run** this entire command in your terminal:

`ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/install/master/install)"`

This could take up to 30 minutes or more. Once finished **run:**

 `brew doctor`

**If** return output is:

 ```
 Your system is ready to brew
```

**then run:**

`brew update`

[Continue to next step](../tree/tree.md)

---

**Else**  return output is:

```
-bash: brew: command not found
```

**or** anything weird **then** [click here](../../error/error.md)

---
### [⇐ Previous](check.md)