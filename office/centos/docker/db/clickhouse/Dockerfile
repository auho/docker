ARG VERSION
FROM yandex/clickhouse-server:${VERSION}

LABEL author="auho auho@163.com"

RUN echo "Asia/Shanghai" > /etc/timezone \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
