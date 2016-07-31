#!/bin/bash

PS1=''

# Set the hostname if this isn't running in iTerm
if [[ -z $ITERM_PROFILE ]]; then
  PS1='\[$RED\]\h '
fi

PS1+='\[$NORMAL\]\W'

GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1

if command -v __git_ps1 > /dev/null 2>&1; then
  PS1+='\[$BLUE\]$(__git_ps1 " (%s)")'
fi

PS1+='\[$NORMAL\] $ '
