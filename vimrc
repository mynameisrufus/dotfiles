" configure vim pathogen
" http://github.com/tpope/vim-pathogen/blob/master/autoload/pathogen.vim  
filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()

" set options
set nobackup
set nowritebackup
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" Switch syntax highlighting on, when the terminal has colors
syntax on

" Switch wrap off for everything
set nowrap

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab

" Always display the status line
set laststatus=2

" Maps autocomplete to tab
imap <Tab> <C-N>
