
alias cd..="cd .."

kill_port () {
  lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }' | xargs kill
}

export JENV_ROOT=/usr/local/var/jenv

export HOMEBREW_GITHUB_API_TOKEN=b297ef7a5eeea82d7518dedd9de703ce5b64207f

alias dc='docker-compose'

# Git helpers
alias git-cleanup='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
