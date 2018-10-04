#!/bin/bash

# git
alias gs='git status'
alias gc='git commit -m'
alias ga='git add'

# ruby
alias bx='bundle exec'
alias br='bin/rails'

function b() {
  bin/$1
}

_b_completions()
{
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi

  COMPREPLY=($(compgen -W "$(find bin -type f -perm +111 | sed 's/bin\///')" -- "${COMP_WORDS[1]}"))
}

complete -F _b_completions b

# unity
alias unity='open -na Unity --args -force-metal'

if ls --version | grep -q GNU; then
  eval `dircolors ~/.dir_colors`
  alias ls='ls --color=auto'
else
  alias ls='ls -G'
fi
