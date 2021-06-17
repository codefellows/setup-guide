# Verify Your Setup

> By the time you’ve completed the guide, you should be able to run the following commands in your terminal and see the expected output.  Your versions may be slightly than what is listed here due to recent updates.

- `code --version`

  ```bash
  1.56.2
  a5d1cc28bb5da32ec67e86cc50f84c67cc690321
  x64
  ```

- `git --version`
  - `git version 2.25.1 (Apple Git-128)`
- `node --version`
  - `v14.17.0`
- `npm --version`
  `6.14.13`
- `eslint --version`
  `v7.27.0`
- `tree --version`
  - `tree v1.8.0 (c) 1996 - 2018 ...`
- WSL/Ubuntu only
  - `echo $PS1`
    - `\[\e[m\]\[\e[36m\]\W\[\e[m\]\[\e[33m\]`parse_git_branch`\$`
- `git config --list`

  ```bash
  user.name=yourusername
  user.email=youremail@somewhere.com
  core.editor=code --wait
  ```

- `code .`
  - should open VS Code with your folder contents

---

### That's It! [Back To the Beginning](../README.md)
