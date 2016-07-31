#!/bin/bash

if [[ -d /usr/local/bin ]]; then
  export PATH="/usr/local/bin:$PATH"
fi

export GOPATH=~/src/go

if [[ -d "${GOPATH}" ]]; then
  export PATH="$PATH:$GOPATH/bin"
fi

if [[ -d /usr/local/opt/coreutils/libexec/gnubin ]]; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi
