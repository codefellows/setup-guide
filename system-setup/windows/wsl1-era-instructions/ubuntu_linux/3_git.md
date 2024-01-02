# Install Git

Using APT, you can also install <a href="http://git-scm.com/" target="_blank">Git</a>, the version control system of choice among choosy developers.

To get started, run the following command.

```
sudo apt-get install -y git
```

## Git Config

Like artists, programmers sign their work. Let's configure Git to sign your commits with your name and email address.

Make sure you sign up for an account at Github <a href="https://github.com" target="_blank">here</a>.

**WARNING:** Before running the following commands one line at at time, replace `YOUR FULL NAME` and `YOUR EMAIL ADDRESS` with the name and email from <a href="https://github.com/settings/profile" target="_blank">your GitHub account</a>.

```
git config --global user.name 'YOUR FULL NAME'
```

```
git config --global user.email 'YOUR EMAIL ADDRESS'
```

```
git config --global core.editor nano
```

### Git Prompt Setup

To get started, run the following command.

```
nano ~/.bash_profile
```

This will open the file in your command line editor Nano

Copy and paste this code into the editor, **underneath any existing content.**

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

# PS1 is what actually defines what you command line prompt looks like.
export PS1="\[\e[31m\]\u\[\e[m\]\[\e[35m\]\w\[\e[m\]\[\e[33m\]\`parse_git_branch\`\[\e[m\]\[\e[32m\]\\$\[\e[m\] "
```

Press `control X` to exit

Type `y` to verify changes

Hit `enter` to exit Nano

Now close terminal and open a new terminal window for changes to take effect.
You will have a new prompt with additional Git and color-coded features.
Don't worry about what this means for now. You will come to understand it's value very soon if you don't already.

### [⇐ Previous](2_apt.md) | [Next ⇒](4_vscode.md)
