# My config file
#
# __/\\\\\\\\\\\\\\\_____/\\\\\\\\\\\____/\\\________/\\\_        
# _\////////////\\\____/\\\/////////\\\_\/\\\_______\/\\\_       
#  ___________/\\\/____\//\\\______\///__\/\\\_______\/\\\_      
#   _________/\\\/_______\////\\\_________\/\\\\\\\\\\\\\\\_     
#    _______/\\\/____________\////\\\______\/\\\/////////\\\_    
#     _____/\\\/_________________\////\\\___\/\\\_______\/\\\_   
#      ___/\\\/____________/\\\______\//\\\__\/\\\_______\/\\\_  
#       __/\\\\\\\\\\\\\\\_\///\\\\\\\\\\\/___\/\\\_______\/\\\_ 
#        _\///////////////____\///////////_____\///________\///__


# Set up the prompt

PROMPT=$'%{\e[0;31m%}%B┌─[%b%{\e[0m%}%{\e[1;37m%}%n%{\e[0;31m%}@%{\e[0m%}%{\e[1;37m%}%m%{\e[0;31m%}%B]%b%{\e[0m%} - %b%{\e[0;31m%}%B[%b%{\e[1;37m%}%~%{\e[0;31m%}%B]%b%{\e[0m%} - %{\e[0;31m%}%B[%b%{\e[0;33m%}%!%{\e[0;31m%}%B]%b%{\e[0m%}
%{\e[0;31m%}%B└─%B[%{\e[1;35m%}$%{\e[0;31m%}%B]%{\e[0m%}%b '
RPROMPT='[%*]'
PS2=$' \e[0;31m%}%B>%{\e[0m%}%b '

setopt histignorealldups sharehistory

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Less coloration
export LESS='-R'
export LESSOPEN='|~/.lessfilter %s'

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

alias l='ls --color'
alias ll='ls -la --color'
alias c='cd ..'
alias gp='git pull'
alias gpu='git push'
alias ga='git add'
alias gm='git commit -m'
alias gc='git clone'
alias to='transmission-remote --auth=transmission:password'
alias prod='ssh louis@emma-chloe.com'
alias popcorn='~/Downloads/Popcorn-Time/Popcorn-Time 2&>1 > /dev/null &'

# Morphux

alias mnt='sudo mount -v -t ext4 /dev/sda2 /mnt/lfs'

# Aliases for rubyOrails
alias rs='rails server'

export LFS=/mnt/lfs

PATH=$PATH:$HOME/bin
MAIL=louis@ne02ptzero.me
EDITOR=vim
alias to-cli='transmission-remote-cli -c transmission:password@127.0.0.1'

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
