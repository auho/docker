ARG VERSION
FROM php:${VERSION}-fpm

LABEL author="auho auho@163.com"

RUN apt-get update \
    && apt-get install -y zlib1g-dev libssl-dev \
    && echo "Asia/Shanghai" > /etc/timezone \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-configure gd --with-jpeg-dir --with-freetype-dir \
    && docker-php-ext-install gd

RUN apt-get install -y libbz2-dev libmcrypt-dev \
    && docker-php-ext-install mysqli pdo_mysql bcmath bz2 calendar mcrypt exif gettext

RUN pecl install mongodb-1.5.3 \
    && docker-php-ext-enable mongodb