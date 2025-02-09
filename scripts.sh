#!/bin/bash

# Aliases to start / stop Docker
alias dockerup='colima start'
alias dockerdown='colima stop'

# Aliases to log into containerized services (change these aliases if you are running local services with the same name)
alias mysql='docker exec -it dockerdash_mysql mysql'
alias mariadb='docker exec -it dockerdash_mariadb mariadb'
alias redis='docker exec -it dockerdash_redis redis-cli'
# alias pgsql='docker exec -it dockerdash_pgsql psql -U postgres'


serviceup () {
  # If no params
  if [ $# -eq 0 ]; then
    echo 'Usage: serviceup [service]'
    return 1
  fi

  # Save current directory
  ORIGINAL_DIR=$(pwd)

  # Path to docker-dash
  TARGET_DIR="$HOME/node/docker-dash/$1"

  # Check if directory exists
  if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory $TARGET_DIR does not exist"
    return 1
  fi

  # Change to target directory
  cd "$TARGET_DIR" || return
  docker compose up -d --build
  cd "$ORIGINAL_DIR" || return
}

servicedown () {
  # If no params
  if [ $# -eq 0 ]; then
    echo 'Usage: servicedown [service]'
    return 1
  fi

  # Save current directory
  ORIGINAL_DIR=$(pwd)

  # Path to docker-dash
  TARGET_DIR="$HOME/node/docker-dash/$1"

  # Check if directory exists
  if [ ! -d "$TARGET_DIR" ]; then
    echo "Error: Directory $TARGET_DIR does not exist"
    return 1
  fi

  # Change to target directory
  cd "$TARGET_DIR" || return
  docker compose down
  cd "$ORIGINAL_DIR" || return
}