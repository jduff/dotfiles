#!/bin/bash

# git
alias gs='git status'
alias gc='git commit -m'
alias ga='git add'

# ruby
alias bx='bundle exec'
alias br='bin/rails'
alias rt='b ruby -Itest'

# unity
alias unity='open -na Unity --args -force-metal'

if ls --version | grep -q GNU; then
  eval `dircolors ~/.dir_colors`
  alias ls='ls --color=auto'
else
  alias ls='ls -G'
fi

if [[ -d ~/.chef ]]; then
  function knife() {(
    [[ -f /opt/dev/dev.sh ]] && source /opt/dev/dev.sh
    cd ~/.chef && BUNDLE_GEMFILE=~/.chef/Gemfile bundle exec knife "$@"
  )}
fi
