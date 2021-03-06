export TERM='xterm-256color'
export CLICOLOR=1

DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

# Aliases
alias bashrc='vim ~/.bashrc'
alias vimrc='vim ~/.vimrc'
alias v='vim'
alias n='node'
alias down='cd ~/Downloads'
alias desk='cd ~/Desktop'
alias proj='cd ~/Projects'

# Globals
export EDITOR=$(which vim)

# git command aliases
source "$DIR/.git-aliases"
source "$DIR/.local-aliases"

function parse_git_branch() {
  local NAME=`git symbolic-ref --short HEAD 2>/dev/null`
  if [ "$NAME" == "master" ]; then
    echo -ne "\033[35m$NAME\033[0m"
  else
    echo -ne "\033[32m$NAME\033[0m"
  fi
}

PS1="[\[\033[33m\]\W\[\033[0m\] \$(parse_git_branch)]# "
