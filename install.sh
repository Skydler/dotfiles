#!/usr/bin/env sh

# Load submodules
git submodules update --init -j 4

# Create links on home folder
ln -s .bash-seafly-prompt/ ~/.bash-seafly-prompt
ln -s .bash_aliases ~/.bash_aliases
ln -s .bashrc ~/.bashrc
ln -s .gitstatus ~/.gitstatus
ln -s .sensible.bash ~/.sensible.bash
ln -s .vim ~/.vim
