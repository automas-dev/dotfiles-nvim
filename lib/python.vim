
let g:python3_host_prog= '/usr/bin/python3'

autocmd FileType python nnoremap <C-k>b :w<CR>:!python ./%<CR>
autocmd FileType python nnoremap <C-k><C-b> :w<CR>:!python ./%<CR>
autocmd FileType python nnoremap <F5> :w<CR>:!./run<CR>
