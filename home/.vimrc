call pathogen#infect()

let mapleader = ","

syntax enable

" Normal mode (block)
let &t_EI = "\<Esc>[1 q"
" Insert mode (vertical bar)
let &t_SI = "\<Esc>[5 q"
" Replace mode (underline)
let &t_SR = "\<Esc>[4 q"

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
set hidden         " allows you to switch buffers without saving
set nrformats=     " Only allow numbers in decimal format for increment and decrement commnands
set backspace=indent,eol,start

set laststatus=2   " Needed to make powerline work

set background=dark
colorscheme solarized

" Makes hidden files appear in ctrlp search in vim
let g:ctrlp_show_hidden = 1

" Stops ctrl-p randomly changing it's working directory
let g:ctrlp_working_path_mode = 0

let g:ctrlp_custom_ignore = {
\ 'dir':  '(node_modules|\.git)$'
\ }

" Allow closing duplicate buffers with BufKill
let g:BufKillActionWhenBufferDisplayedInAnotherWindow = 'kill'

" save file
map <leader>w :w<CR>

" open new file
map <leader>e :e

" delete buffer
map <leader>d :BD<CR>

" delete all buffers
map <leader>ad :bufdo bdelete<CR>

" force delete buffer
map <leader>D :BD!<CR>

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

" Use <leader>+<direction> to navigate between splits instead of ctrl+w+<direction>
map <leader><Up> <C-w><Up>
map <leader><Down> <C-w><Down>
map <leader><Right> <C-w><Right>
map <leader><Left> <C-w><Left>

" Resize horizonatal splits with leader jk
map <leader>j <C-w>+
map <leader>k <C-w>-

" Equalise splits
map <leader>= <C-w>=

" Close all but 'current' split window
map <leader>o :only<CR>

" make the checksyntax plugin automatically check ruby syntax after save
let g:checksyntax={'ruby': {'cmd': 'ruby -c', 'okrx': 'Syntax OK', 'auto': 1}}

" use eslint for javascript syntax checking
let g:syntastic_javascript_checkers = ['eslint']

let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

autocmd BufWritePre * :%s/\s\+$//e      " strip trailing whitespace

" select what you just pasted
map gp `[v`]
set tags=tags
