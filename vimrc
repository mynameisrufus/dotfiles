" configure vim pathogen
" http://github.com/tpope/vim-pathogen/blob/master/autoload/pathogen.vim  

call pathogen#infect()
syntax on
filetype plugin indent on

" clojure script syntax highlight
autocmd BufRead,BufNewFile *.cljs setlocal filetype=clojure

" colours
set t_Co=256
colorscheme wombat256

" :help usr05
set nocompatible
set backspace=indent,eol,start
set history=50
if &t_Co > 2 || has("gui_running")
  syntax on
endif
set ruler
set nowrap

" set options
set nobackup
set nowritebackup
set showcmd " display incomplete commands
set incsearch " do incremental searching

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set tw=80 " when the line will wrap
set colorcolumn=81

" Always display the status line
set laststatus=2

imap <S-C-v> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>

" Show special characters unless golang (hide tabs)
set invlist
augroup File-Type
  autocmd!
  autocmd FileType go set invlist
augroup END

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

au BufRead,BufNewFile *.hamlc set ft=haml
au BufRead,BufNewFile *.pp set ft=ruby
