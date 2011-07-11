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
nmap <leader>p :let @* = expand("%:p")<CR> " use ',p' to copy the current path to the system clipboard
set pastetoggle=<leader>p

" notepad ++ like moves (line switchs)
map <C-S-down> ddp
imap <C-S-down> <Esc>ddpi
map <C-S-j> ddp
imap <C-S-j> <Esc>ddpi
map <C-S-up> ddkP
imap <C-S-up> <Esc>ddkPi
map <C-S-k> ddkP
imap <C-S-k> <Esc>ddkPi

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
set foldmethod=indent   " folding is available following indentation
set nofoldenable    " disable folding by default

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
" set tw=72 " when the line will wrap

" Always display the status line
set laststatus=2

imap <S-C-v> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft 
  set ft= 
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d  
  $d  
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()

" activate plugin for matchit (don't really know if it's a good idea to let that here though)
filetype plugin on

