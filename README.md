![Image](https://github.com/user-attachments/assets/436a2fbb-4cb5-4250-8124-4ebacaa1ed5b)

# docker-dash

A lightweight Docker solution for managing virtualized database services without Docker Desktop. The goal is to get the ease and speed of using something like DBngn, without being constrained by what services are being supported, and to utilize the effortlessness and system resource mindfulness of Docker containers, without dealing with Docker scaffolding.

## Installation

Clone the project and source scripts.sh in your .bashrc or .zshrc

## Install dependencies

```bash
brew install colima docker
```

## Instructions

```bash
# Start up Docker
dockerup

# Start the service (mailpit, mariadb, mysql and postgres)
serviceup mariadb

# Service interaction and settings
(more info inside the service README.md)

# Stop the service
servicedown mariadb

# Shut down Docker
dockerdown
```

## Hard reset of a container in case new settings are not applied

```bash
# cd into the service location (../docker-dash/mariadb) and run
docker compose down --rmi all --volumes --remove-orphans
docker compose up -d --build
```