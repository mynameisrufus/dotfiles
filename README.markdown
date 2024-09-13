### Installation

    $ git clone https://github.com/mynameisrufus/dotfiles.git ~/.dotfiles
    $ cd ~/.dotfiles
    $ git submodule update --init
    $ sh install.sh

Changing shells:

    $ chsh -s /bin/zsh

or back to bash:

    $ chsh -s /bin/bash

### Adding a plugin

    $ git submodule add --depth 1 https://github.com/user/vim-myplugin.git vim/bundle/vim-myplugin

### Updating plugins

    $ sh update.sh

### Removing plugins

    $ rm -rf vim/bundle/vim-myplugin
    $ git submodule deinit -f -- vim/bundle/vim-myplugin
    $ rm -rf .git/modules/vim/bundle/vim-myplugin

### Acknowledgements

Thanks to [Ryan Bates]( http://github.com/ryanb/dotfiles) for the Rakefile code and [James Sadler](http://github.com/freshtonic/dotfiles) for the pathogen and bundle ideas.
