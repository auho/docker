ARG VERSION
FROM redis:${VERSION}

LABEL author="auho auho@163.com"

RUN echo "Asia/Shanghai" > /etc/timezone \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

CMD ["redis-server", "/usr/local/etc/redis/redis.conf"]