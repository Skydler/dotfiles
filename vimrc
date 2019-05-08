set nocompatible		"required for VundleVim
filetype off			"required for VundleVim

"PLUGINS SHOULD BE BETWEEN vundle#begin/end

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'sonph/onehalf', {'rtp': 'vim/'}
Plugin 'jiangmiao/auto-pairs'

cal vundle#end()
filetype plugin indent on
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


" Theme shit
colorscheme onehalfdark
let g:airline_theme='onehalfdark'
" True Colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Tabs and spaces config
set tabstop=4       " number of visual spaces per TAB
set softtabstop=4   " number of spaces in tab when editing
set expandtab       " tabs are spaces

" UI Config
set number	            " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set showmatch           " highlight matching [{()
set laststatus=2        " Always display the status bar
set relativenumber      " Show line number on the current line and relative numbers on the rest
set title               " Set the window's title, showing the current file name
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c) " Don't ask for now...

" Searching
set incsearch           " search as characters are entered
set hlsearch            " highlight matches

" Orivudes tab-completion for all file-related tasks
set path+=**

" Text rendering options
set encoding=utf-8
set linebreak
syntax enable
