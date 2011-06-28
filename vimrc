" configure vim pathogen
" http://github.com/tpope/vim-pathogen/blob/master/autoload/pathogen.vim  
filetype on " solves pathogen exit status 1 bug - http://tooky.github.com/2010/04/08/there-was-a-problem-with-the-editor-vi-git-on-mac-os-x.html
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" assigning a leader key and mapping some commands to it
let mapleader = ","
map <leader>s :%s/\s\+$//e \| :%s/\t/  /e<CR><C-o>  " use ',s' to clean trailing spaces and remove tabs
map <leader>= <Esc>:1,$!xmllint --format -<CR>  " use ',=' to xml re-indent
nnoremap <leader>l :set invwrap wrap?<CR>  " use ',l' to toggle wordwrap
nnoremap <leader>d :NERDTreeToggle<CR>  " use ',d' to toggle the NERDTree
nmap <leader>p :let @* = expand("%:p") " use ',p' to copy the current path to system clipboard
set pastetoggle=<leader>p

" notepad ++ like moves (line switchs)
map <C-S-down> ddp
imap <C-S-down> <Esc>ddp
map <C-S-j> ddp
imap <C-S-j> <Esc>ddp
map <C-S-up> ddkP
imap <C-S-up> <Esc>ddkP
map <C-S-k> ddkP
imap <C-S-k> <Esc>ddkP

" switching on buffer like tabs
:map <C-PageUp> :bp<CR>
:map <C-PageDown> :bn<CR>

" :help usr05
set nocompatible
set backspace=indent,eol,start
set autoindent
set history=50
if &t_Co > 2 || has("gui_running")
  syntax on
endif
set ruler
set wrap

" set options
set nobackup
set nowritebackup
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set number    " display line numbers
set showmatch  " show matching bracket

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
" set tw=72 " when the line will wrap

" Always display the status line
set laststatus=2

" Maps autocomplete to tab
imap <C-Tab> <C-N>
