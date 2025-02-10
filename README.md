# docker-dash

A lightweight Docker solution for managing virtualized database services without Docker Desktop. The goal is to get the ease and speed of using something like DBngn, without being contrained by what services are being supported. I wanted to utilize the effortlessness of running a Docker image instead of having to install something locally, but without using Docker Desktop and without dealing with scaffolding Docker containers for each new project.

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