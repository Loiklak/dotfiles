#!/bin/sh

echo "Symlinking gitconfig"
rm ~/.gitconfig
ln -s ./.gitconfig ~/.gitconfig

echo "Installing Zsh plugins"

echo "fzf..."
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

echo "zsh-autosuggestions..."
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
