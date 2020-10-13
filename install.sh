#!/usr/bin/env sh

# Save local stuff, just in case..
mv ~/.bashrc ~/.bashrc.bak
mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.config/starship.toml ~/.config/starship.toml.bak

# Create links on home folder
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.sensible.bash ~/.sensible.bash
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml

echo "Remember to install dependencies"
echo "Dependencies list:"
echo "-Starship"
echo "-NeoVim"
