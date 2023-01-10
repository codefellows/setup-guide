#!/bin/bash

sudo apt update

mkdir ~/Downloads/install-scripts
cd ~/Downloads/install-scripts

wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/install-config-xrdp.sh
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/install-virtualbox.sh
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/system-config.sh
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/install-vscode.sh
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/install-allow-ssh.sh
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/install-other-apps.sh
wget https://raw.githubusercontent.com/codefellows/setup-guide/main/configs/ops/execute-scripts.sh

bash execute-scripts.sh