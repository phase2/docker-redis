FROM phase2/servicebase

RUN yum -y update && \
    yum -y install redis && \
    yum clean all

# Add an include to a config file we can override later
RUN echo -e "\n\ninclude /etc/redis-local.conf\n" >> /etc/redis.conf

ADD root /

VOLUME ["/var/log/redis"]

EXPOSE 6379
