### Installation

    $ git clone git@github.com:mynameisrufus/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ git submodule update --init
    $ rake install

Changing shells:

    $ chsh -s /bin/zsh

or back to bash:

    $ chsh -s /bin/bash

### Adding a plugin

    $ git submodule add https://github.com/user/vim-myplugin.git vim/bundle/vim-myplugin

### Updating plugins

    $ rake update

### Custom commands (.vimrc)

Toggle indentation for the current window with `;i` it is off by
default.

Reformat xml use `PrettyXML`.

### Fixing "There was a problem with the editor 'vi'" on commit

    $ git config --global core.editor /usr/bin/vim

### Acknowledgements

Thanks to [Ryan Bates]( http://github.com/ryanb/dotfiles) for the Rakefile code and [James Sadler](http://github.com/freshtonic/dotfiles) for the pathogen and bundle ideas.
