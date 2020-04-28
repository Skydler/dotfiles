#!/usr/bin/env sh

# Load submodules
git submodule update --init -j 4

# Save local stuff, just in case..
mv ~/.bashrc ~/.bashrc.bak
mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak

# Create links on home folder
ln -s ~/dotfiles/.bash-seafly-prompt/ ~/.bash-seafly-prompt
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.gitstatus ~/.gitstatus
ln -s ~/dotfiles/.sensible.bash ~/.sensible.bash
ln -s ~/dotfiles/.vim ~/.vim
