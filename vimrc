colorscheme darkblue
syntax on
filetype on

if has('gui_running')
    set guifont=Monaco:h16
    set guioptions-=T
    set guioptions-=m
    set guioptions+=c
    set columns=100
    set lines=49
    set cursorline
endif

set fileformats=mac,unix,dos
set showtabline=2
set nocompatible
set nu
set cindent
set smartindent
set ai
set hlsearch
set incsearch
set ignorecase
set scrolloff=10

set shiftwidth=4
set softtabstop=4
set tabstop=8
set expandtab

set fileencodings=utf-8,big5,
set termencoding=utf-8
set encoding=utf-8

map  <C-s> :w<CR>:%s=\s\+$==<CR>
imap <C-s> <ESC>:w<CR>a
map  <C-n> :tabnew<CR>

imap <C-k> <up>
imap <C-j> <down>
imap <C-h> <left>
imap <C-l> <right>
map  <C-k> Hjzz
map  <C-j> Lkzz
map  <C-h> :tabprevious<CR>
map  <C-l> :tabnext<CR>
imap <C-c> <esc>
map  <C-c> :nohl<cr>
nmap ; :
vmap ; :
nmap <tab> v>
nmap <s-tab> v<
vmap <tab> >gv
vmap <s-tab> <gv
noremap <C-o> :NERDTree<CR>

set directory=/tmp

highlight OverLength ctermbg=cyan ctermfg=white guibg=cyan
highlight ExtraWhitespace ctermbg=red ctermfg=white guibg=red
call matchadd('ExtraWhitespace', '\s\+$')
"call matchadd('OverLength', '\%101v.\+')

