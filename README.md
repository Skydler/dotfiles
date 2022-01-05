# Dotfiles

Hope you catch something new!

![Example setup](resources/img1.png)

## Installation

```shell
git clone https://github.com/Skydler/dotfiles.git

# Saving current config...
mv ~/.zshrc ~/.zshrc.bak
mv ~/.bashrc ~/.bashrc.bak
mv ~/.vim ~/.vim.bak
mv ~/.vimrc ~/.vimrc.bak
mv ~/.config/starship.toml ~/.config/starship.toml.bak
mv ~/.config/kitty/kitty.conf ~/.config/kitty/kitty.conf.bak

# Creating soft links on home folder
ln -s ~/dotfiles/bash/.bash_aliases ~/.bash_aliases
ln -s ~/dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/dotfiles/bash/.sensible.bash ~/.sensible.bash
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/vim ~/.config/nvim

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

# Coc-Lists support (if you want them quick)
sudo apt-get install ripgrep

# Kitty terminal
[Instructions](https://sw.kovidgoyal.net/kitty/binary/)
```
