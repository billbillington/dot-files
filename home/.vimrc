call pathogen#infect()

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

set laststatus=2   " Needed to make powerline work

set background=dark
colorscheme solarized

" Makes hidden files appear in ctrlp search in vim
let g:ctrlp_show_hidden = 1

" save file
map <leader>w :w<CR>

" open new file
map <leader>e :e

" delete buffer
map <leader>d :bdelete<CR>

" force delete buffer
map <leader>D :bdelete!<CR>

" open new file in split
map <leader>se :sp<CR>:e

" file in project search
map <leader>p <C-p>

" file in buffer search
map <leader>b :CtrlPBuffer<CR>

" file in project search in split
map <leader>sp :sp<CR><C-p>

" file in project search in split
map <leader>sb :sp<CR>:CtrlPBuffer<CR>

" Git Grep
map <leader>g :GitGrep<Space>

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Use ctrl+<direction> to navigate between splits instead of ctrl+w+<direction>
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-Left> <C-W><Left>
nnoremap <C-Down> <C-W><Down>
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Right> <C-W><Right>

" make the checksyntax plugin automatically check ruby syntax after save
let g:checksyntax={'ruby': {'cmd': 'ruby -c', 'okrx': 'Syntax OK', 'auto': 1}}

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

autocmd BufWritePre * :%s/\s\+$//e      " strip trailing whitespace

" select what you just pasted
map gp `[v`]
