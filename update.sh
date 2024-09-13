#!/bin/bash

curl -o vim/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim
git submodule foreach git pull origin master
