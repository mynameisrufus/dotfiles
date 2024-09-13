#!/bin/bash

create_symlink() {
    src=$1
    dest=$2

    # Ensure the source file exists
    if [ ! -e "$src" ]; then
        echo "Warning: Source file not found: $src"
        return
    fi

    # Remove existing file or symlink at the destination
    if [ -e "$dest" ] || [ -L "$dest" ]; then
        rm "$dest"
        echo "Removed existing file or symlink: $dest"
    fi

    # Create the symlink
    ln -s "$(pwd)/$src" "$dest"
    echo "Created symlink: $src -> $dest"
}

create_symlink "bashrc" "$HOME/.bashrc"
create_symlink "config/zed/settings.json" "$HOME/.config/zed/settings.json"
create_symlink "gitconfig" "$HOME/.gitconfig"
create_symlink "gitignore" "$HOME/.gitignore"
create_symlink "itermcolors" "$HOME/.itemcolors"
create_symlink "oh-my-zsh" "$HOME/.oh-my-zsh"
create_symlink "vim" "$HOME/.vim"
create_symlink "vimrc" "$HOME/.vimrc"
create_symlink "zshrc" "$HOME/.zshrc"
