function! FormatFile()
    let save_pos = getpos('.')
    normal! gg=G
    "%!astyle
    call setpos('.', save_pos)
endfunction

xmap <leader>f <Plug>(coc-format-selected)
nmap <leader>f <Plug>(coc-format-selected)
nmap <C-k><C-d> <Plug>(coc-format)
autocmd FileType python nnoremap <C-k>i :CocCommand python.sortImports<CR>
autocmd FileType python nnoremap <C-k><C-i> :CocCommand python.sortImports<CR>

"nnoremap <C-f> :call FormatFile()<CR>
"inoremap <C-f> <Esc>:call FormatFile()<CR>a
"nnoremap<C-k><C-d> :call FormatFile()<CR>

autocmd FileType c setlocal equalprg=astyle
autocmd FileType c++ setlocal equalprg=clang-format
autocmd FileType cpp setlocal equalprg=clang-format
"autocmd FileType python setlocal equalprg=autopep8\ -
autocmd FileType rust setlocal equalprg=rustfmt
