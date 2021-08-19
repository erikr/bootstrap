#!/bin/bash

# Pure theme
mkdir -p $HOME/.zsh
git clone https://github.com/sindresorhus/pure.git $HOME/.zsh/pure

# ZSH autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions \
 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


