# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="josh"

# Set to this to use case-sensitive completion
# export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git ruby rails cap github)

source $ZSH/oh-my-zsh.sh

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=/usr/sbin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=/opt/local/bin:$PATH
export PATH=/opt/bin:$PATH
<<<<<<< HEAD
export PATH=~/Library/android-sdk-mac_x86/platform-tools:$PATH
export NODE_PATH=/usr/local/lib/node
export EDITOR=vim
=======
export PATH=/usr/local/lib/node:$PATH
>>>>>>> ebf5830127d7e41ed8e6ccf359eebfeb992eafec

# Customize to your needs...
setopt NOCORRECTALL
alias vi=vim
<<<<<<< HEAD
alias gd='git diff'
alias gdv='git diff | vim -'
alias be='bundle exec'
alias bake='bundle exec rake'

alias ack='ack -a --ignore-dir log --ignore-dir coverage'
=======
alias bake="bundle exec rake"
>>>>>>> ebf5830127d7e41ed8e6ccf359eebfeb992eafec

[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
