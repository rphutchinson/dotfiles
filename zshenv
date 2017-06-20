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
