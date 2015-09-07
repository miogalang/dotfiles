DOTFILES=$HOME/.files

# Path to your oh-my-zsh configuration.
ZSH=$DOTFILES/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="geoffgarside"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode npm osx redis-cli gem)

source $ZSH/oh-my-zsh.sh

# Z (https://github.com/rupa/z)
export _Z_DATA=$HOME/.z-data
. $DOTFILES/.z/z.sh

# Server
function server() {
  local port="${1:-8000}"
  open "http://localhost:${port}/"
  python -m SimpleHTTPServer "$port"
}

# Correct commands only not parameters
unsetopt correct_all  
setopt correct

# Add reverse search
bindkey "^R" history-incremental-search-backward

# Disable gm alias cause it conflicts with graphicsmagick
disable -a gm

PHP_AUTOCONF="/usr/local/bin/autoconf"
source ~/.bash_aliases
