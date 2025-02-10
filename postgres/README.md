# PostgreSQL

## Interfacing with PostgreSQL in the container

```bash
docker exec -it dockerdash_postgres psql -U root

# This alias runs "docker exec -it dockerdash_postgres psql"
psql
```

## Credentials for Table Plus

```bash
Host: 127.0.0.1
Port: 5432
User: root
Password: pw
```

## Credentials in Laravel

```bash
DB_CONNECTION=pgsql
DB_HOST=127.0.0.1
DB_PORT=5432
DB_DATABASE=mydb01
DB_USERNAME=root
DB_PASSWORD=pw
```