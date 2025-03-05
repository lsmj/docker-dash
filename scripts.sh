#!/bin/bash

# Aliases to start / stop Docker
# alias dockerup='colima start'
alias dockerup='(colima start >/dev/null 2>&1 &)'
alias dockerdown='colima stop'

# Aliases to log into containerized services (change these aliases if you are running local services with the same name)
alias dd-mysql='docker exec -it dockerdash_mysql mysql'
alias dd-mariadb='docker exec -it dockerdash_mariadb mariadb'
alias dd-psql='docker exec -it dockerdash_postgres psql'
alias dd-redis-cli='docker exec -it dockerdash_redis redis-cli'

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

allup () {
  serviceup mariadb
  serviceup mysql
  serviceup postgres
  serviceup redis
}

alldown () {
  servicedown mariadb
  servicedown mysql
  servicedown postgres
  servicedown redis
}

# On load
dockerup
