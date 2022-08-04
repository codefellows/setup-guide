# Verify Your Setup Part 1

> By the time you’ve completed the guide, you should be able to run the following commands in your terminal and see the expected output. Your versions may be slightly different than what is listed here due to recent updates.

- `code --version`
  - `1.64.2`
- `git --version`
  - `git version 2.34.1`
- `node --version`
  - `v17.31.1`
- `npm --version`
  - `8.3.0`
- `eslint --version`
  - `v8.1.0`
- `tree --version`
  - `tree v2.0.1 (c) 1996 - 2018 ...`
- `git config --list` should contain at least the following:
  - `user.name=YOUR NAME`
  - `user.email=YOUR EMAIL`
  - `core.editor=code --wait`
  - `init.defaultbranch=main`
  - Type the letter `q` to exit the config screen and return to the previous screen.
- `code .`
  - should open VS Code with your current folder contents

## Verify Your Setup Part 2

Run the following command

```bash
curl -Ls https://bit.ly/3qMWhbE | bash
```

You should get a successful message. If you do not see `By gum, you've done it!`, look at the output from the steps in part 1 to begin troubleshooting. Get TA assistance as necessary.

---

### That's It! [Back To the Beginning](../README.md)
