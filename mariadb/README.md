# MariaDB

## Interfacing with mariadb if mariadb or mysql is installed locally

```bash
mariadb -h 127.0.0.1 -P 3306 -u root -p

mariadb -h 127.0.0.1 -P 3306 -u root -p -e "CREATE DATABASE my_database;"
```

## Logging into the container
```bash
docker exec -it dockerdash_mariadb mariadb -h 127.0.0.1 -P 3306 -u root -p
```

## Credentials for Table Plus

```bash
Host: 127.0.0.1
Port: 3306
Username: root
Password: db_pw
Database: db_name
```