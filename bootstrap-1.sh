#!/bin/bash

# Set up symlinks
bash ~/bootstrap/generate-symlinks.sh

# Foundation
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install neovim curl zsh tmux tree unzip make
sudo apt-get dist-upgrade

# OMZ
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo passwd $USER