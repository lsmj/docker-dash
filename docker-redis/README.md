# Commands and settings

## Log into the container's Redis service

```bash
docker exec -it redis_container redis-cli
```

## Credentials in Laravel (.env)

```bash
REDIS_CLIENT=phpredis
REDIS_HOST=redis
REDIS_PASSWORD=null
REDIS_PORT=6379
```