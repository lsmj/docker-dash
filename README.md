# docker-dash

A lightweight solution for running Docker and start services in the Terminal without having to install and run Docker Desktop.

## Installation

```bash
# Using Homebrew (macOS)
brew install colima docker
```

## Bash scripts

```bash
alias dockerup='colima start'
alias dockerdown='colima stop'

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
```

## Run Docker

```bash
dockerup
```

## Usage

```bash
serviceup mailpit
serviceup mariadb
serviceup redis

servicedown mailpit
servicedown mariadb
servicedown redis
```

## Shut down Docker

```bash
dockerdown
```
