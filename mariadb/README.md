# MariaDB

## Interfacing with MariaDB in the container

```bash
docker exec -it dockerdash_mariadb mariadb -u root -p

# This alias runs "docker exec -it dockerdash_mariadb mariadb"
mariadb
```

## Credentials for Table Plus

```bash
Host: 127.0.0.1
Port: 3306
User: root
Password: pw
```

## Credentials in Laravel

```bash
DB_CONNECTION=mariadb
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=mydb01
DB_USERNAME=root
DB_PASSWORD=pw
```