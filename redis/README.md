# Commands and settings

## Log into the container's Redis service

```bash
docker exec -it dockerdash_redis redis-cli
```

## Credentials in Laravel (.env)

```bash
CACHE_STORE=redis
CACHE_DRIVER=redis

REDIS_CLIENT=phpredis
REDIS_HOST=127.0.0.1
REDIS_PASSWORD=null
REDIS_PORT=6379
```