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

" Move between panes
map <A-j> <C-W>j
map <A-k> <C-W>k
map <A-h> <C-W>h
map <A-l> <C-W>l

"NERDTree toggle
map <C-n> :NERDTreeToggle<CR>
