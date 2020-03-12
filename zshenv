
alias cd..='cd ..'
alias ls='ls -la'

kill_port () {
  lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }' | xargs kill
}

export JENV_ROOT=/usr/local/var/jenv

alias dc='docker-compose'

# Git helpers
alias git-cleanup='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
