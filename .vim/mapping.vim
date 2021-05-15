" Folding shortcut
nnoremap <space> za

" ctrl+l to refresh hlsh
nnoremap <silent> <C-l> :<C-u> nohlsearch <CR><C-l>

" Buffer movement
nmap <leader>l :bnext<cr>
nmap <leader>h :bprevious<cr>

" Quickfix list movement
nmap <leader>j :cn<cr>
nmap <leader>k :cp<cr>

" Move between windows
map <A-j> <C-W>j
map <A-k> <C-W>k
map <A-h> <C-W>h
map <A-l> <C-W>l


if has("nvim")
    " Terminal
    map <leader>t :vs<cr><C-W><C-l>:terminal<cr>
    tnoremap <Esc> <C-\><C-n>
    tnoremap <A-q><Esc> <Esc>

    tnoremap <A-j> <C-\><C-n><C-W>j
    tnoremap <A-k> <C-\><C-n><C-W>k
    tnoremap <A-h> <C-\><C-n><C-W>h
    tnoremap <A-l> <C-\><C-n><C-W>l

    augroup neovim_terminal
        autocmd!
        " Enter Terminal-mode (insert) automatically
        autocmd TermOpen * startinsert
        " Disables number lines on terminal buffers
        autocmd TermOpen * :set nonumber norelativenumber
    augroup END
endif

"NERDTree toggle
map <C-n> :NERDTreeToggle<CR>
