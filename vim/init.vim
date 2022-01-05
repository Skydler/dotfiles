" With a map leader it's possible to do extra key combinations
let mapleader = ","

source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/mapping.vim

" Specific nvim config
if has('nvim')
    let g:python3_host_prog='/usr/bin/python3'
endif

set history=200         " history of commands set to 200 lines
set updatetime=300

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
set cursorline          " highlight current line
set showcmd             " show command in bottom bar
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to.
set colorcolumn=88      " draw a ruler at 80 chars

" Status
set title               " Set the window's title, showing the current file name
set laststatus=2        " Always display the status bar
"statusline setup
set statusline=%#Visual#
set statusline+=\ %f       "tail of the filename
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%h      "help file flag
set statusline+=%w      "preview window flag
set statusline+=%=      "alignment separator
set statusline+=%{&ff!='unix'?'['.&ff.']':''} "file format if != unix
set statusline+=%y      "file type
set statusline+=\ ‹‹\ %l\/%L:%v\ ›› "coordinates

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
set showmatch           " highlight matching [{()
set linebreak           " Doesn't brake words in the middle on wrap
set wrap
syntax enable

" Buffers
set autoread            " Set to auto read when a file is changed from the
                        " outside
set hidden              " A buffer becomes hidden when it is abandoned
set noswapfile          " Avoids creating a swapfile
set clipboard=unnamed

if has('unnamedplus')
    set clipboard+=unnamedplus
endif