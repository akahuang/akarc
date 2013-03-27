colorscheme darkblue
syntax on
filetype on
filetype plugin on

if has('gui_running')
    set guifont=Inconsolata:h22
    set guioptions-=T
    set guioptions-=m
    set guioptions+=c
    set columns=100
    set lines=40
    set cursorline
endif

"set fileformats=mac,unix,dos
set fileformat=dos
set showtabline=2
set nocompatible
set nu
set smartindent
set ai
set hlsearch
set incsearch
set ignorecase
set scrolloff=10
set showcmd

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

set directory=/tmp

highlight OverLength ctermbg=cyan ctermfg=white guibg=cyan
highlight ExtraWhitespace ctermbg=red ctermfg=white guibg=red
"call matchadd('ExtraWhitespace', '\s\+$')
"call matchadd('OverLength', '\%101v.\+')

let Tlist_Ctags_Cmd='/usr/local/bin/ctags'
map <C-o> :TagbarToggle<CR>
map <C-g> :GitGutterLineHighlightsToggle<CR>
call pathogen#infect() 
