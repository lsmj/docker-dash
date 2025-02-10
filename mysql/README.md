# MySQL

## Interfacing with MySQL in the container

```bash
docker exec -it dockerdash_mysql mysql -u root -p

# This alias runs "docker exec -it dockerdash_mysql mysql"
mysql
```

## Credentials for Table Plus

```bash
Host: 127.0.0.1
Port: 3307
User: root
Password: pw
```

## Credentials in Laravel

```bash
DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3307
DB_DATABASE=mydb01
DB_USERNAME=root
DB_PASSWORD=pw
```