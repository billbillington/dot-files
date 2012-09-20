call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let mapleader = ","

syntax enable

set number
set smartindent
set autoindent
set expandtab
set tabstop=2
set showcmd
set softtabstop=2
set shiftwidth=2
set autoread
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files
set cursorline     " Highlights current line
set hidden         " allows you to switch buffers without saving
set nrformats=     " Only allow numbers in decimal format for increment and decrement commnands

map <leader>w :w<CR>
map <leader>e :e
map <leader>d :bdelete<CR>
map <leader>se :sp<CR>:e

autocmd BufWritePre * :%s/\s\+$//e   " strip trailing whitespace
