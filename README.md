# Outrigger Redis

> Redis container with a confd template for redis.conf

[![](https://images.microbadger.com/badges/version/outrigger/redis.svg)](https://microbadger.com/images/outrigger/redis "Get your own version badge on microbadger.com") [![](https://images.microbadger.com/badges/image/outrigger/redis.svg)](https://microbadger.com/images/outrigger/redis "Get your own image badge on microbadger.com")

Unlike the official [Redis image](https://hub.docker.com/_/redis), this CentOS-based
image has a confd template for Redis configuration.

For more documentation on how Outrigger images are constructed and how to work
with them, please [see the documentation](http://docs.outrigger.sh/en/latest/).

## Environment Variables

Outrigger images use Environment Variables and [confd](https://github.com/kelseyhightower/confd)
to "templatize" a number of Docker environment configurations. These templates are
processed on startup with environment variables passed in via the docker run
command-line or via your docker-compose manifest file. Here are the "tunable"
configurations offered by this image.

* `REDIS_BIND`: [`127.0.0.1 10.0.0.1`] Space-separated list of IPs to bind to.
  If this variable is not specified it will bind on all interfaces.

* `REDIS_PROTECTED`: `no`  By default redis starts up in protected mode (yes) and this
  allows you to turn protected mode off by default. Possible values are 'yes' or 'no'

## Security Reports

Please email outrigger@phase2technology.com with security concerns.

## Maintainers

[![Phase2 Logo](https://www.phase2technology.com/wp-content/uploads/2015/06/logo-retina.png)](https://www.phase2technology.com)
