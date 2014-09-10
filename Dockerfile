FROM phase2/servicebase

RUN add-apt-repository ppa:chris-lea/redis-server && \
    apt-get -y update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y redis-server

EXPOSE 6379

CMD /usr/bin/redis-server --daemonize no --port 6379 --bind 0.0.0.0 --timeout 0 --save "" --loglevel notice --logfile "" --databases 1 --appendonly no
