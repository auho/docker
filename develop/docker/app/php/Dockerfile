ARG VERSION
FROM php:${VERSION}-fpm

LABEL author="auho auho@163.com"

RUN apt-get update \
    && apt-get install -y libmemcached-dev zlib1g-dev libssl-dev \
    && echo "Asia/Shanghai" > /etc/timezone \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime
    
RUN pecl channel-update https://pecl.php.net/channel.xml \
    && docker-php-ext-install mysqli pdo_mysql \
    && pecl install xdebug \
    && pecl install swoole \
    && pecl install yaconf \
    && pecl install memcached \
    && pecl install redis \
    && pecl install mongodb \
    && docker-php-ext-enable xdebug swoole yaconf memcached redis mongodb

RUN apt-get install -y libpng-dev libjpeg-dev libfreetype6-dev \
    && docker-php-ext-configure gd --with-jpeg-dir --with-freetype-dir \
    && docker-php-ext-install gd

# RUN curl -LsS https://codeception.com/codecept.phar -o /usr/local/bin/codecept \
#     && chmod a+x /usr/local/bin/codecept
COPY codecept.phar /usr/local/bin/codecept
RUN  chmod a+x /usr/local/bin/codecept

RUN apt-get install -y libzip-dev \
    && docker-php-ext-install zip
