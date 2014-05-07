#misc aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias .b="source $HOME/.bashrc"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#rails/ruby aliases
alias be='bundle exec'

#git aliases
alias s='git status'
