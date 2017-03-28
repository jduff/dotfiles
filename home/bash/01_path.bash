#!/bin/bash

if [[ -d /usr/local/bin ]]; then
  export PATH="/usr/local/bin:$PATH"
fi

export GOPATH="$HOME/go"

if [[ -d "${GOPATH}" ]]; then
  export PATH="$GOPATH/bin:$PATH"
fi

if [[ -d /usr/local/opt/coreutils/libexec/gnubin ]]; then
  export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
  export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:$MANPATH"
fi
