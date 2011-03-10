" configure vim pathogen
" http://github.com/tpope/vim-pathogen/blob/master/autoload/pathogen.vim  
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" :help usr05
set nocompatible
set backspace=indent,eol,start
set autoindent
set history=50
if &t_Co > 2 || has("gui_running")
  syntax on
endif
set ruler
set nowrap

" set options
set nobackup
set nowritebackup
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set tw=72 " when the line will wrap

" Always display the status line
set laststatus=2

" Maps autocomplete to tab
imap <Tab> <C-N>
