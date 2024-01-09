#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'

main(){

    if code --version >/dev/null && git --version >/dev/null && node --version >/dev/null && npm --version >/dev/null && eslint --version >/dev/null && (tree --version >/dev/null || tree.com --version >/dev/null) && cat ~/.gitconfig >/dev/null ; then
        echo -e "${GREEN}By gum, you've done it!"
    else
        echo -e "${RED}Something went wrong!"
    fi
    
    tput init
}

main

## Full/Raw: curl -Ls https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/verify.sh | bash
## Actual: curl -Ls https://bit.ly/3qMWhbE | bash
