#!/bin/bash

sudo apt update

# Install Virtalbox using Apt 
sudo apt install virtualbox -y

# Add the Virtualbox Extension Pack
sudo apt install virtualbox-ext-pack -y

# Create a shortcut to Virtualbox
gsettings set org.gnome.shell favorite-apps "$(gsettings get org.gnome.shell favorite-apps | sed s/.$//), 'virtualbox.desktop']"

