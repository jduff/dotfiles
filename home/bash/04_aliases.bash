#!/bin/bash

# git
alias gs='git status'
alias gc='git commit -m'
alias ga='git add'

# ruby

alias b='bundle exec'
alias rt='b ruby -Itest'

if ls --version | grep -q GNU; then
  eval `dircolors ~/.dir_colors`
  alias ls='ls --color=auto'
else
  alias ls='ls -G'
fi

if [[ -d ~/.chef ]]; then
  knife() {(
    [[ -f /opt/dev/dev.sh ]] && source /opt/dev/dev.sh
    cd ~/.chef && BUNDLE_GEMFILE=~/.chef/Gemfile b knife "$@"
  )}
fi
