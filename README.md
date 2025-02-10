# docker-dash

A lightweight Docker solution for managing virtualized database services without running Docker Desktop.

## Installation

Clone the project and source scripts.sh in your .bashrc or .zshrc

## Install dependencies

```bash
brew install colima docker
```

## Start up Docker

```bash
dockerup
```

## Start service

```bash
serviceup mariadb
```

## Interaction and settings

More info in the service README.md files

## Stop service

```bash
servicedown mariadb
```

## Shut down Docker

```bash
dockerdown
```

## Hard reset of container

```bash
# cd into the service location (../docker-dash/mariadb) and run
docker compose down --rmi all --volumes --remove-orphans
docker compose up -d --build
```