#!/bin/bash

if [ -d "/usr/local/etc/bash_completion.d" ]; then
  for file in /usr/local/etc/bash_completion.d/* ; do
    source "$file"
  done
fi

[[ -r "/opt/homebrew/etc/profile.d/bash_completion.sh" ]] && . "/opt/homebrew/etc/profile.d/bash_completion.sh"

# fzf completion
if [ -f /usr/local/opt/fzf/shell/key-bindings.bash ]; then
  source /usr/local/opt/fzf/shell/key-bindings.bash
  source /usr/local/opt/fzf/shell/completion.bash
fi

if [ -f /opt/homebrew/opt/fzf/shell/key-bindings.bash ]; then
  source /opt/homebrew/opt/fzf/shell/key-bindings.bash
  source /opt/homebrew/opt/fzf/shell/completion.bash
fi

# fzf + ag configuration
if hash fzf 2>/dev/null && hash ag 2>/dev/null; then
  export FZF_DEFAULT_COMMAND='ag --nocolor --hidden -g "!{node_modules/*,.git/*}"'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_DEFAULT_OPTS='
  --color fg:242,bg:236,hl:65,fg+:15,bg+:239,hl+:108
  --color info:108,prompt:109,spinner:108,pointer:168,marker:168
  '
elif hash fzf 2>/dev/null && hash rg 2>/dev/null; then
  export FZF_DEFAULT_COMMAND='rg --files --hidden -g "!{node_modules/*,.git/*}"'
fi

# Complete host names from known hosts
_complete_ssh_hosts ()
{
        COMPREPLY=()
        cur="${COMP_WORDS[COMP_CWORD]}"
        comp_ssh_hosts=`cat ~/.ssh/known_hosts | \
                        cut -f 1 -d ' ' | \
                        sed -e s/,.*//g | \
                        grep -v ^# | \
                        uniq | \
                        grep -v "\[" ;
                cat ~/.ssh/config | \
                        grep "^Host " | \
                        awk '{print $2}'
                `
        COMPREPLY=( $(compgen -W "${comp_ssh_hosts}" -- $cur))
        return 0
}
complete -F _complete_ssh_hosts ssh

function b() {
  bin/$@
}

_b_completions()
{
  if [ "${#COMP_WORDS[@]}" != "2" ]; then
    return
  fi

  COMPREPLY=($(compgen -W "$(find bin -type f -perm +111 | sed 's/bin\///')" -- "${COMP_WORDS[1]}"))
}

complete -F _b_completions b
