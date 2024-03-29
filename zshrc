# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.oh-my-zsh

# Set to the name theme to load.
# Look in ~/.oh-my-zsh/themes/
export ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
export DISABLE_AUTO_UPDATE="false"

export DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git gem github bundler)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
setopt NOCORRECTALL

# Scripts
for file in $HOME/.dotfiles/config/*.sh; do source $file; done

# Custom (not checked in)
for file in $HOME/.dotfiles/custom/*.sh; do source $file; done

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

. /opt/homebrew/opt/asdf/libexec/asdf.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/rufuspost/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/rufuspost/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/rufuspost/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/rufuspost/google-cloud-sdk/completion.zsh.inc'; fi
