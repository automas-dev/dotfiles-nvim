"
" ~/.config/nvim/init.vim
"

call plug#begin('~/.vim/plugged')
    " Plugin Section

    " Themes
    Plug 'dracula/vim'
    Plug 'rakr/vim-one'
    Plug 'nightsense/carbonized'

    " NERDTree
    Plug 'scrooloose/nerdtree'
    Plug 'ryanoasis/vim-devicons'

    " CoC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}

    " C++
    Plug 'jackguo380/vim-lsp-cxx-highlight'
    Plug 'automas-dev/vim-cmake'

    " Toml
    Plug 'cespare/vim-toml'

    " Lua
    Plug 'automas-dev/vim-lua'

    " GLSL
    Plug 'tikhomirov/vim-glsl'

    " Scarpet
    Plug 'automas-dev/vim-scarpet'

    " Fugitive
    Plug 'tpope/vim-fugitive'

    " MdBook live preview
    Plug 'automas-dev/vim-mdbook'

    " Kmonad
    Plug 'kmonad/kmonad-vim'

    " Rainbow CSV
    Plug 'mechatroner/rainbow_csv'

    " Bullets
    Plug 'bullets-vim/bullets.vim'
call plug#end()

let g:coc_global_extensions = [
            \'coc-pyright',
            \'coc-rust-analyzer',
            \'coc-snippets',
            \'coc-lua',
            \'coc-cmake',
            \'coc-git',
            \'coc-json',
            \'coc-sh',
            \'coc-xml',
            \'coc-html',
            \'coc-css',
            \'coc-yaml',
            \'coc-vimlsp',
            \'coc-tsserver',
            \'coc-angular',
            \]

" neovim uses stdpath('config') while vim uses ~/.vim
if exists("*stdpath")
    let s:cwd = stdpath('config')
else
    let s:cwd = '~/.vim'
endif
let s:deps = [
            \'colors',
            \'keys',
            \'macro',
            \'openterm',
            \'nerdtree',
            \'coc',
            \'snip',
            \'format',
            \'bullet',
            \'cpp',
            \'lua',
            \'rust',
            \'python',
            \]

for dep in s:deps
    call util#Requires(s:cwd, util#PathJoin("lib", dep))
endfor

set hidden

set nobackup
set nowritebackup

set nofixeol
set nofixendofline

set updatetime=300

set shortmess+=c

" Enable Mouse
set mouse=a

"Text Folding
set foldmethod=syntax
set foldlevel=20

" Set Tab Size to 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Text encoding (does nothing)
set encoding=UTF-8

" Light Numbers
set number

" Open new split panes to right and below
set splitright
set splitbelow

" Ignore case while searching
set ignorecase

" Ignore case while completing file paths
set wildignorecase

" Enable spell check
autocmd FileType markdown setlocal spell
autocmd FileType c setlocal spell
autocmd FileType cpp setlocal spell
autocmd FileType cmake setlocal spell
autocmd FileType python setlocal spell

" Persistent  undo
if has('persistent_undo')
    set undofile
    if has('nvim')
        let &undodir = util#PathJoin(s:cwd, "nundo")
    else
        let &undodir = util#PathJoin(s:cwd, "undo")
    endif
endif

" Yank to system clipboard
set clipboard=unnamedplus
