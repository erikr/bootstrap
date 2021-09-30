#!/bin/bash

# OMZ
sh -c "$(wget -O- https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Pure theme
mkdir -p $HOME/.zsh
git clone https://github.com/sindresorhus/pure.git $HOME/.zsh/pure

# ZSH autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions \
 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# ZSH syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
 ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
rm -rf zsh-syntax-highlighting

# tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm


# Conda & Mamba
INSTALLER=Miniconda3-latest-$(uname)-$(uname -m).sh
curl -L -O https://repo.anaconda.com/miniconda/$INSTALLER
bash $INSTALLER
~/miniconda3/bin/conda init zsh

rm .bash* .profile .zcompdump* .zshrc.pre-oh-my-zsh $INSTALLER

# Install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install neovim
brew install gcc

# Vim plug
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

# Install plugins into neovim
nvim --headless +PlugInstall +qall
