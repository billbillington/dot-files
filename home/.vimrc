call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

syntax enable

set number
set smartindent
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set autoread
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files

autocmd BufWritePre * :%s/\s\+$//
