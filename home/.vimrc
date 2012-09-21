call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

let mapleader = ","

syntax enable

set number         " show line numbers
set smartindent    " increase or increase indentation for lines in brackets etc
set autoindent     " keeps level of indentation for new lines
set expandtab      " use spaces for tabs
set tabstop=2      " sets how tabs are displayed
set showcmd        " show commands as you type
set softtabstop=2  " set indent size in insert mode
set shiftwidth=2   " used when >> shifting lines
set autoread       " reload unmodified files automatically
set nobackup       " no backup files
set nowritebackup  " only in case you don't want a backup file while editing
set noswapfile     " no swap files
set cursorline     " Highlights current line
set hidden         " allows you to switch buffers without saving
set nrformats=     " Only allow numbers in decimal format for increment and decrement commnands

set background=dark
colorscheme solarized

map <leader>w :w<CR>                    " save file
map <leader>e :e                        " open new file
map <leader>d :bdelete<CR>              " delete buffer
map <leader>se :sp<CR>:e                " open new file in split
map <leader>p <C-p>                     " file in project search
map <leader>b :CtrlPBuffer<CR>          " file in buffer search
map <leader>sp :sp<CR><C-p>             " file in project search in split
map <leader>sb :sp<CR>:CtrlPBuffer<CR>  " file in project search in split

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

autocmd BufWritePre * :%s/\s\+$//e      " strip trailing whitespace
