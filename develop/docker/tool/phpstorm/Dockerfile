FROM ubuntu

LABEL author="auho auho@163.com"

# ADD https://download-cf.jetbrains.com/webide/PhpStorm-2019.1.2.tar.gz
COPY PhpStorm-2019.1.2.tar.gz /opt/PhpStorm-2019.1.2.tar.gz

RUN apt-get update \
    && apt-get install -y libxi6 libxtst6 libxrender1 libxft-dev curl \
    && apt-get autoclean \
    && apt-get autoremove

RUN cd /opt \
    && tar -xf PhpStorm-2019.1.2.tar.gz \
    && rm -rf PhpStorm-2019.1.2.tar.gz \
    && curl -fsSL https://get.docker.com -o get-docker.sh \
    && sh get-docker.sh \
    && curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose \
    && chmod +x /usr/local/bin/docker-compose


CMD ["/opt/PhpStorm-191.7141.52/bin/phpstorm.sh"]