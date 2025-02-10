![Image](https://github.com/user-attachments/assets/436a2fbb-4cb5-4250-8124-4ebacaa1ed5b)

# docker-dash

> A lightweight Docker solution for managing virtualized database services without Docker Desktop.

The goal is to get the ease and speed of using something like DBngn, without being constrained by what services are being supported, and to utilize the effortlessness and system resource mindfulness of Docker containers, without dealing with Docker scaffolding.

With the use of bash aliases you can activate and interact with databases services as you would with installed systems, but without the installation, maintenance and system resource overhead of said services running in the background at all times.

The instructions are macOS only using Homebrew, but the idea is easily transferable to other systems. [Colima](https://github.com/abiosoft/colima) (macOS and Linux only) is used to run Docker in the background. Colima creates a minimal Docker container runtime. 

## Installation

Clone the project and source scripts.sh in your .bashrc or .zshrc. Be aware that some aliases added by scripts.sh (like mysql and redis) might conflict with existing systems, in which case they should be renamed or commented out. The idea is to uninstall these systems all together and use these aliases and services as virtualized drop-in replacements for the real thing.

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