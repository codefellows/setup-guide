# Prompt Setup

**Run:**

`nano ~/.bash_profile`

Your Nano editor will open.

Copy and paste the following code into the editor, **underneath any existing code in this file:**

```
#!/usr/bin/env bash

# get current branch in git repo
function parse_git_branch() {
	BRANCH=`git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`
	if [ ! "${BRANCH}" == "" ]
	then
		STAT=`parse_git_dirty`
		echo "[${BRANCH}${STAT}]"
	else
		echo ""
	fi
}

# get current status of git repo
function parse_git_dirty {
	status=`git status 2>&1 | tee`
	dirty=`echo -n "${status}" 2> /dev/null | grep "modified:" &> /dev/null; echo "$?"`
	untracked=`echo -n "${status}" 2> /dev/null | grep "Untracked files" &> /dev/null; echo "$?"`
	ahead=`echo -n "${status}" 2> /dev/null | grep "Your branch is ahead of" &> /dev/null; echo "$?"`
	newfile=`echo -n "${status}" 2> /dev/null | grep "new file:" &> /dev/null; echo "$?"`
	renamed=`echo -n "${status}" 2> /dev/null | grep "renamed:" &> /dev/null; echo "$?"`
	deleted=`echo -n "${status}" 2> /dev/null | grep "deleted:" &> /dev/null; echo "$?"`
	bits=''
	if [ "${renamed}" == "0" ]; then
		bits=">${bits}"
	fi
	if [ "${ahead}" == "0" ]; then
		bits="*${bits}"
	fi
	if [ "${newfile}" == "0" ]; then
		bits="+${bits}"
	fi
	if [ "${untracked}" == "0" ]; then
		bits="?${bits}"
	fi
	if [ "${deleted}" == "0" ]; then
		bits="x${bits}"
	fi
	if [ "${dirty}" == "0" ]; then
		bits="!${bits}"
	fi
	if [ ! "${bits}" == "" ]; then
		echo " ${bits}"
	else
		echo ""
	fi
}

export PS1="\[\e[31m\]\u\[\e[m\]\[\e[35m\]\w\[\e[m\]\[\e[33m\]\`parse_git_branch\`\[\e[m\]\[\e[32m\]\\$\[\e[m\] "

export BASH_SILENCE_DEPRECATION_WARNING=1

echo "`echo -e '\xE2\x9C\x93'` Prompt is Ready `whoami`"

echo "Time to become a bad-ass developer! Self-defeat is not an option. Small wins, everyday!"

alias profile="nano ~/.bash_profile"

prompt(){
  echo "`echo -e '\xE2\x9C\x93'` Prompt is Ready `whoami`"
}

verify(){
  echo ""
  echo "PROMPT ➠ `prompt`"
  echo "$PS1"
  echo ""
  echo "HOMEBREW ➠  `which brew`"
  echo ""
  echo "TREE ➠  `tree --version`"
  echo ""
  echo "CODE ➠  `code --version`"
  echo ""
  echo "NODE ➠  `node --version`"
  echo ""
  echo "NPM ➠  `npm --version`"
  echo ""
  echo "ESLINT ➠  `eslint --version`"
  echo ""
  echo "LIVE SERVER ➠  `live-server --version`"
  echo ""
  echo "GIT ➠  `git --version`"
  echo ""
  echo " ▼ GITCONFIG ▼ "
  echo ""
  echo "`cat ~/.gitconfig`"
  echo ""
  echo "VSCODE EXTENSIONS:"
  echo ""
  echo "`code --list-extensions`"
}
```

**Next** press `control X` to save.

**Then** Type `y` to verify changes.

**Hit** `return` to exit Nano editor.

## **Now close the terminal and open a new terminal window for changes to take effect.** 

Expected message:

```
✓ Prompt is Ready macUserName 
```

---

Did you get the expected message in your new terminal?

[Yes](../homebrew/check.md)

[No](../../error/error.md)

---
### [⇐ Previous](../terminal/setup.md)
