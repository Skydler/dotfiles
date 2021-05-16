# Dotfiles

Hope you catch something new!

![Example setup](resources/img1.png)

# Installation

```shell
git clone https://github.com/Skydler/dotfiles.git

# Saving current config...
mv ~/.bashrc ~/.bashrc.bak
mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.config/starship.toml ~/.config/starship.toml.bak

# Creating soft links on home folder
ln -s ~/dotfiles/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.sensible.bash ~/.sensible.bash
ln -s ~/dotfiles/.vim ~/.vim
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml

# Remember to install dependencies!
# Starship
sh -c "$(curl -fsSL https://starship.rs/install.sh)"

# Neovim
sudo apt-get install neovim

# Python support
sudo apt-get install python-neovim
sudo apt-get install python3-neovim

# Node support
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

```
