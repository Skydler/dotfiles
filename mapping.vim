" Fast saving
nmap <leader>w :w!<cr>

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

" Easy system clipboard yank and paste
nmap <leader>y "+y
nmap <leader>p "+p

" :W sudo saves the file (useful for handling the permission-denied error)
command W w !sudo tee % > /dev/null
