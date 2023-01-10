#!/bin/bash

sudo apt update

# Install Open SSH Server
sudo apt install openssh-server -y

# Start the service now and launch the service on startup
sudo systemctl enable --now ssh

# Create a firewallrule
sudo ufw allow ssh