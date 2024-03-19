
let g:NERDTreeShowHidden=1
let g:NERDTreeMinimalUI=1
let g:NERDTreeIgnore=[]
let g:NERDTreeStatusline=''

" Automatically close nvim if NERDTree is the only thing left open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Toggle
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

" Refresh when entering nerd tree
autocmd BufEnter NERD_tree_* | execute 'normal R'

" Refresh on file write
"autocmd BufWritePost * NERDTreeFocus | execute 'normal R' | wincmd p
