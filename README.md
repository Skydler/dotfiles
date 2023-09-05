# Dotfiles

Hope you catch something new!

![Example setup](resources/img1.png)

## Packages

- Zsh
  - [Ohmyzsh](https://github.com/ohmyzsh/ohmyzsh)
- [Starship](https://starship.rs/guide/#%F0%9F%9A%80-installation)
- [Kitty](https://sw.kovidgoyal.net/kitty/binary/)
- [NvChad](https://nvchad.com/docs/quickstart/install)
- [ripgrep](https://github.com/BurntSushi/ripgrep)
- [Neovim](https://neovim.io/)
  - python3-neovim
- [NodeJs](https://nodejs.org/en)
- [Ranger](https://github.com/ranger/ranger)

## Installation

```shell
git clone https://github.com/Skydler/dotfiles.git

# Creating soft links on home folder
ln -s ~/dotfiles/zsh/.zsh_aliases ~/.zsh_aliases
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/dotfiles/starship.toml ~/.config/starship.toml
ln -s ~/dotfiles/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -s ~/dotfiles/vim/nvchad/custom ~/.config/nvim/lua/custom
```
