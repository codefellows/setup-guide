# Verify Your Setup Part 1

> By the time you’ve completed the guide, you should be able to run the following commands in your terminal and see the expected output. Your versions may be slightly higher than what is listed here due to recent updates.

Run these commands and compare them with the expected output.

- `code --version`
  - Expected output: `1.64.2`
- `git --version`
  - Expected output: `git version 2.34.1`
- `node --version`
  - Expected output: `v17.8.0`
- `npm --version`
  - Expected output: `8.3.0`
- `eslint --version`
  - Expected output: `v8.1.0`
- `tree --version`
  - Expected output: `tree v2.0.1 (c) 1996 - 2018 ...`
- `git config --list`
  - Should contain at least the following:
  - `user.name=YOUR NAME`
  - `user.email=YOUR EMAIL`
  - `core.editor=code --wait`
  - `init.defaultbranch=main`
  - (Type the letter `q` to exit the config screen and return to the previous screen.)
- `code .`
  - Should open VS Code with your current folder contents

If any of the above commands do not give you the expected output, get [assistance](../../error/error.md).

---

## Verify Your Setup Part 2

Run the following command

```bash
curl -Ls https://bit.ly/3qMWhbE | bash
```

You should get a successful message. If instead you see `Something went wrong!`, look at the output carefully, and retry the steps in part 1 to begin troubleshooting. Get [assistance](../../error/error.md) as necessary.

---

### That's It! [Back To the Beginning](../../README.md)
