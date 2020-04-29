" With a map leader it's possible to do extra key combinations
let mapleader = ","

source $HOME/.vim/plugins.vim
source $HOME/.vim/mapping.vim

" Flagging unnecessary whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set history=200         " history of commands set to 200 lines

" Identation
set tabstop=4           " number of visual spaces per TAB
set shiftwidth=4
set softtabstop=4       " number of spaces in tab when editing
set expandtab           " tabs are spaces
set smarttab
set autoindent
set smartindent

" Code folding
set foldmethod=indent
set foldlevel=99

" UI
set number	            " show line numbers
set relativenumber      " Show line number on the current line and relative numbers on the rest
set cursorline          " highlight current line
set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.

" Status
set title               " Set the window's title, showing the current file name
set laststatus=2        " Always display the status bar
set statusline=%f%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %v) " Don't ask for now...

" Mouse
set mouse=a             " mouse support for terminal

" Search
set incsearch           " search as characters are entered
set ignorecase          " Ignore case when searching
set smartcase           " Be smart about cases
set hlsearch            " highlight words matching the search

" Overrides tab-completion for all file-related tasks
set path+=**

" Text rendering options
set encoding=utf-8      " set encoding
set fileencoding=utf-8
set showmatch           " highlight matching [{()
set linebreak           " Doesn't brake words in the middle on wrap
syntax enable

" Buffers
set autoread            " Set to auto read when a file is changed from the outside
set hidden              " A buffer becomes hidden when it is abandoned
set noswapfile          " Avoids creating a swapfile
set clipboard=unnamed

if has('unnamedplus')
    set clipboard+=unnamedplus
endif

" Netrw
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_winsize = 25
