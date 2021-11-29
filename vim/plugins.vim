" Automatic installation of vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


call plug#begin('~/.vim/bundle')

" Text editing
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'psliwka/vim-smoothie'

" Code syntax highlighting and completion
Plug 'sheerun/vim-polyglot'
Plug 'honza/vim-snippets'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Directory search
Plug 'kyazdani42/nvim-tree.lua'
Plug 'mhinz/vim-startify'

" Themes
Plug 'lifepillar/vim-gruvbox8' 
Plug 'arcticicestudio/nord-vim' 
Plug 'navarasu/onedark.nvim' 
Plug 'sainnhe/everforest' 
Plug 'w0ng/vim-hybrid' 
Plug 'tyrannicaltoucan/vim-quantum' 
Plug 'Pocco81/Catppuccino.nvim' 
Plug 'EdenEast/nightfox.nvim'

" Icons 
Plug 'kyazdani42/nvim-web-devicons'
call plug#end()

if (has("termguicolors"))
  set termguicolors
endif

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           Themes Config                               "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:onedark_italic_comment = v:true
let g:gruvbox_filetype_hi_groups = 1
let g:gruvbox_plugin_hi_groups = 1
let g:nord_italic = 1

colorscheme onedark

" Polyglot
let g:python_highlight_space_errors = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           COC-NVIM                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:coc_global_extensions = [
  \ 'coc-json',
  \ 'coc-snippets',
  \ 'coc-lists',
  \ ]

" Coc extensions used (this is for me, to remember not global extensions)
" coc-phpls
" coc-markdownlint
" coc-prettier
" coc-eslint
" coc-css
" coc-html
" coc-pyright

" Use tab for trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

nmap <Leader>rn <Plug>(coc-rename)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocActionAsync('doHover')
  endif
endfunction

" Woah sweet outline
nmap <silent> go :CocOutline<CR>

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')
" Add `:OR` command for organize imports of the current buffer.
command! -nargs=0 OR   :call CocAction('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}




"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               FZF                                     "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nmap <Leader>f [fzf-p]
xmap <Leader>f [fzf-p]
nnoremap <silent> [fzf-p]r     :<C-u>:CocListResume<CR>

" Files and buffers
nnoremap <silent> [fzf-p]p     :<C-u>CocList files<CR>
nnoremap <silent> [fzf-p]m     :<C-u>CocList mru<CR>
nnoremap <silent> [fzf-p]b     :<C-u>CocList buffers<CR>
nnoremap <silent> [fzf-p]gr    :<C-u>CocList grep<CR>
nnoremap <silent> [fzf-p]w     :<C-u>CocList words<CR>
nnoremap <silent><Leader>*     :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>
" Vim stuff
nnoremap <silent> [fzf-p]q     :<C-u>CocList quickfix<CR>
nnoremap <silent> [fzf-p]l     :<C-u>CocList locationlist<CR>
nnoremap <silent> [fzf-p]vc    :<C-u>CocList vimcommands<CR>
" Coc stuff
nnoremap <silent> [fzf-p]c     :<C-u>CocList commands<CR>
nnoremap <silent> [fzf-p]L     :<C-u>CocList lists<CR>
nnoremap <silent> [fzf-p]o     :<C-u>CocList outline<CR>
nnoremap          [fzf-p]ok    :<C-u>CocList outline -kind 
nnoremap <silent> [fzf-p]d     :<C-u>CocList diagnostics<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           STARTIFY                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:startify_bookmarks = [ '~/.vim/vimrc', '~/.vim/plugins.vim' ]
let g:startify_change_to_vcs_root = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                           NvimTree                                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-b>          :NvimTreeToggle<CR>
nnoremap <leader><C-b>  :NvimTreeFindFile<CR>
let g:nvim_tree_disable_window_picker = 1
let g:nvim_tree_indent_markers = 1

lua << EOF
require'nvim-tree'.setup {
    hijack_cursor = true,
}
EOF
