" Automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'junegunn/vim-plug'
Plug 'jiangmiao/auto-pairs'
Plug 'scrooloose/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'dense-analysis/ale'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'sheerun/vim-polyglot'

" Colorscheme
Plug 'morhetz/gruvbox'

call plug#end()









" ================== VIM CONFIGURATION ==================


" Flagging unnecessary whitespace
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

set updatetime=100      " recomended by gitgutter plugin

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
set statusline=%F%m%r%h%w%=(%{&ff}/%Y)\ (line\ %l\/%L,\ col\ %v) " Don't ask for now...

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
set fileencoding=utf-8
set showmatch           " highlight matching [{()
set linebreak           " Doesn't brake words in the middle on wrap
syntax enable

" Buffers
set autoread            " Set to auto read when a file is changed from the outside
set hidden              " A buffer becomes hidden when it is abandoned
set noswapfile          " Avoids creating a swapfile
nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>

" Quickfix list
nmap <leader>j :cn<cr>
nmap <leader>k :cp<cr>

" Easy system clipboard yank and paste
nmap <leader>y "+y
nmap <leader>p "+p







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

" YouCompleteMe config
let g:ycm_collect_identifiers_from_tags_files = 1   " Let YCM read tags from Ctags file
let g:ycm_use_ultisnips_completer = 1               " Default 1, just ensure
let g:ycm_seed_identifiers_with_syntax = 1          " Completion for programming language's keyword
let g:ycm_complete_in_comments = 1                  " Completion in comments
let g:ycm_complete_in_strings = 1                   " Completion in string
let g:ycm_autoclose_preview_window_after_insertion = 1 " Closes preview window after user leaves insert mode
nmap <leader>gt :rightbelow vertical YcmCompleter GoTo<cr>
nmap <leader>gr :YcmCompleter GoToReferences<cr>
nmap <leader>gp :YcmCompleter GetType<cr>
nmap <leader>gd :YcmCompleter GetDoc<cr>
nmap <leader>fi :YcmCompleter FixIt<cr>
nmap <leader>rr :YcmCompleter RefactorRename
nmap <leader>oi :YcmCompleter OrganizeImports<cr>


" Configuration for UltiSnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>"        "List possible snippets based on current file

" NERDTree config
map <C-n> :NERDTreeToggle<CR>
