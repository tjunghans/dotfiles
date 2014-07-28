alias ll='ls -l'
alias la='ls -la'                     
alias l='ls -CF'  

# git command aliases
alias gch='git checkout'
alias gbr='git branch'
alias gs='git status'
alias gcd='git checkout develop'
alias gcm='git checkout master'
alias gph='git push'
alias gpl='git pull'
alias grf='git reset HEAD --'
alias ga='git add .'
alias gau='git add -u .'
alias gcam='git commit -a -m'
alias gc='git commit -a'

function parse_git_branch() {
  local NAME=`git symbolic-ref --short HEAD 2>/dev/null`
  if [ "$NAME" == "master" ]; then
    echo -ne "\033[35m$NAME\033[0m"
  else
    echo -ne "\033[32m$NAME\033[0m"
  fi
}

PS1="[\[\033[33m\]\W\[\033[0m\] \$(parse_git_branch)]# "
