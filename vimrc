set nocompatible		"required for VundleVim
filetype off			"required for VundleVim

"PLUGINS SHOULD BE BETWEEN vundle#begin/end

" set runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dense-analysis/ale'

" Colorscheme
Plugin 'morhetz/gruvbox'

cal vundle#end()
filetype plugin indent on









" ================== PLUGINS CONFIGURATION ==================

" Theme config
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

" True Colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Flagging unnecessary whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" YouCompleteMe config
let g:ycm_collect_identifiers_from_tags_files = 1   " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1               " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1          " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1                  " Completion in comments
let g:ycm_complete_in_strings = 1                   " Completion in string
let g:ycm_autoclose_preview_window_after_insertion = 1 " Closes preview window after user leaves insert mode

" Configuration for UltiSnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>"        "List possible snippets based on current file

" NERDTree config
map <C-n> :NERDTreeToggle<CR>

" ALE_flake8 config
let g:ale_python_flake8_options = "--max-line-length=120"









" ================== FILE TYPES CONFIGURATION ==================

" HTML
autocmd FileType html setlocal shiftwidth=2 softtabstop=2
autocmd FileType htmldjango setlocal shiftwidth=2 softtabstop=2
au BufNewFile,BufRead *.html set filetype=htmldjango        " all html files are htmldjango files

" JavaScript
autocmd FileType javascript setlocal shiftwidth=2 softtabstop=2

" CSS
autocmd FileType css setlocal shiftwidth=2 softtabstop=2









" ================== VIM CONFIGURATION ==================

" With a map leader it's possible to do extra key combinations
let mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" :W sudo saves the file (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null

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
nnoremap <space> za

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
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %c) " Don't ask for now...

" Mouse
set mouse=a             " mouse support for terminal

" Search
set incsearch           " search as characters are entered
set ignorecase          " Ignore case when searching
set smartcase           " Be smart about cases
set hlsearch            " highlight words matching the search
nnoremap <silent> <C-l> :<C-u> nohlsearch <CR><C-l>

" Overrides tab-completion for all file-related tasks
set path+=**

" Text rendering options
set encoding=utf-8      " set encoding
set showmatch           " highlight matching [{()
set linebreak           " Doesn't brake words in the middle on wrap
syntax enable

" Buffers
map <leader>l :bnext<cr>
map <leader>h :bprevious<cr>

set autoread            " Set to auto read when a file is changed from the outside
set hidden              " A buffer becomes hidden when it is abandoned
set noswapfile          "Avoids creating a swapfile
