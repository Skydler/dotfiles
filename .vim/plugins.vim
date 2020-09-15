" Automatic installation of vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/bundle')

Plug 'jiangmiao/auto-pairs'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tpope/vim-commentary'
Plug 'sheerun/vim-polyglot'

" Plug 'dense-analysis/ale'
" Plug 'airblade/vim-gitgutter'
" Plug 'scrooloose/nerdtree'
" Plug 'ycm-core/YouCompleteMe'

" Colorscheme
Plug 'morhetz/gruvbox'

call plug#end()


"Theme config
let g:gruvbox_italic=1
set background=dark
colorscheme gruvbox

" True Colors
if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

" Configuration for UltiSnips
let g:UltiSnipsExpandTrigger       = "<c-j>"
let g:UltiSnipsJumpForwardTrigger  = "<c-j>"
let g:UltiSnipsJumpBackwardTrigger = "<c-p>"
let g:UltiSnipsListSnippets        = "<c-k>"        "List possible snippets based on current file

" Polyglot
let g:python_highlight_space_errors = 0
