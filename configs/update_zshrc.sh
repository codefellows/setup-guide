#!/bin/bash

update(){
    echo '# NVM' >> ~/.zshrc
    echo 'export NVM_DIR="$HOME/.nvm" [ -s "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/nvm.sh"' >> ~/.zshrc
    echo '[ -s "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm" ] && . "/home/linuxbrew/.linuxbrew/opt/nvm/etc/bash_completion.d/nvm"' >> ~/.zshrc
}

update

## curl -s https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/update_zshrc.sh | bash
