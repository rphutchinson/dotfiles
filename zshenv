
alias cd..="cd .."
alias cta='cd ~/projects/teamphoria/teamphoria-api'
alias ctw='cd ~/projects/teamphoria/teamphoria-web'
alias ctd='cd ~/projects/teamphoria/teamphoria-docker'
alias vsh='cta && vagrant ssh'
alias dc='ctd && ./dc'
de(){
  docker exec -it $1 /bin/bash 
}
alias latest='docker exec -t teamphoria_api_1 /bin/bash -c "NODE_ENV=docker CONFIG_FILE=./config-docker.json node node_modules/knex/lib/bin/cli.js migrate:latest"'
alias rollback='docker exec -t teamphoria_api_1 /bin/bash -c "NODE_ENV=docker CONFIG_FILE=./config-docker.json node node_modules/knex/lib/bin/cli.js migrate:rollback"'
import(){
  mysql --host=localhost --user=teamphoria --port=3306 --default-character-set=utf8  -protocol=tcp --comments  < "$1"
}

kill_port () {
  lsof -n -i4TCP:$1 | grep LISTEN | awk '{ print $2 }' | xargs kill
}

export JENV_ROOT=/usr/local/var/jenv

export HOMEBREW_GITHUB_API_TOKEN=b297ef7a5eeea82d7518dedd9de703ce5b64207f

alias dc='docker-compose'

# Git helpers
alias git-cleanup='git branch --merged | egrep -v "(^\*|master|dev)" | xargs git branch -d'
