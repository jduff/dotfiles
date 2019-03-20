#!/bin/bash

if [[ -d /usr/local/bin ]]; then
  export PATH="/usr/local/bin:$PATH"
fi

export GOPATH="$HOME/go"

if [[ -d "${GOPATH}" ]]; then
  export PATH="$GOPATH/bin:$PATH"
fi
