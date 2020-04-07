# Testing & Quick Setup for Mac Users

This guide will provide a starting point to help facilitators identify errors or next steps in the configuration process.  This will help eliminate the hassle of searching for the problem by defining a step by step procedure that can be tested in the console.

The setup guide takes the student through the following process:

1. Terminal /Prompt
2. Homebrew
3. Tree
4. VS Code / Code
5. Nodejs / NPM
6. ESLint / Live Server
7. Git
8. Git Configuration
9. VSCode Extensions

**Run** this command in student's terminal to check their progress:

`verify`

**If** you receive:

```
zsh: command not found: verify
```

Start [HERE](../mac/terminal/zsh.md)

---

**Else** you receive:

```
bash: command not found: verify
```

Start [HERE](../mac/git/git-prompt.md)

---

**Expected Output**

```
PROMPT ➠ ✓ Prompt is Ready yourMacUserName
\[\e[31m\]\u\[\e[m\]\[\e[35m\]\w\[\e[m\]\[\e[33m\]`parse_git_branch`\[\e[m\]\[\e[32m\]\$\[\e[m\] 

HOMEBREW ➠  /usr/local/bin/brew

TREE ➠  tree v1.8.0 (c) 1996 - 2018 by Steve Baker, Thomas Moore, Francesc Rocher, Florian Sesser, Kyosuke Tokoro 

CODE ➠  1.43.1
fe22a9645b44368865c0ba92e2fb881ff1afce94
x64

NODE ➠  v10.16.0

NPM ➠  6.9.0

ESLINT ➠  v6.7.2

LIVE SERVER ➠  live-server 1.2.1

GIT ➠  git version 2.22.0

 ▼ GITCONFIG ▼ 

[core]
	editor = code --wait
[user]
	name = githubUserName
	email = yourEmail@gmail.com

VSCODE EXTENSIONS:

DavidAnson.vscode-markdownlint
dbaeumer.vscode-eslint
george-alisson.html-preview-vscode
hdg.live-html-previewer
msjsdiag.debugger-for-chrome
ritwickdey.LiveServer
tht13.html-preview-vscode
yzhang.markdown-all-in-one
```
