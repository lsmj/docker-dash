# docker-dash

A lightweight Docker solution for managing virtualized database services without running Docker Desktop.

## Installation

Clone the project and source scripts.sh in your .bashrc or .zshrc

## Dependencies: colima and docker CLI

```bash
# Using Homebrew
brew install colima docker
```

## Running Docker in the background

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

## Refresh image with new settings

```bash
# cd into service location (/docker-dash/mariadb) and run
docker compose down --rmi all --volumes --remove-orphans
docker compose up -d --build
```