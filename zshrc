# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="nicoulaj"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

export DOCKER_HOST=tcp://localhost:4243

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem github bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
setopt NOCORRECTALL

# Scripts
for file in $HOME/.dotfiles/config/*.sh; do source $file; done
# for file in $HOME/.dotfiles/config/*.rb; do ruby $file; done

# Custom (not checked in)
for file in $HOME/.dotfiles/custom/*.sh; do source $file; done
# for file in $HOME/.dotfiles/custom/*.rb; do ruby $file; done
