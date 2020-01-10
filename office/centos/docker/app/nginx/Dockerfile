ARG VERSION
FROM nginx:${VERSION}

LABEL author="auho auho@163.com"

RUN echo "Asia/Shanghai" > /etc/timezone \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY conf/php-fpm.conf /etc/nginx/
COPY conf/php-location.conf /etc/nginx/