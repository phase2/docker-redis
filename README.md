![logo](https://www.phase2technology.com/wp-content/uploads/2015/06/logo-retina.png)

# Redis

Redis container with a confd template for redis.conf

## Configuration

### Environment Variables

#### REDIS_BIND

This is a space separated list of IPs to bind to.  If this variable is not specified it will bind on all interfaces. 

In a Dockerfile
```
ENV REDIS_BIND 127.0.0.1 10.0.0.1
```

Via Docker Compose file
```
environment:
  REDIS_BIND: 127.0.0.1 10.0.0.1
```
