ARG VERSION
FROM go:${VERSION}-stretch

LABEL author="auho auho@163.com"

RUN echo "Asia/Shanghai" > /etc/timezone \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
