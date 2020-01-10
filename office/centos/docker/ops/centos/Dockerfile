ARG VERSION
FROM centos:${VERSION}

LABEL author="auho auho@163.com"

RUN echo "Asia/shanghai" > /etc/timezone \
    && ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && yum update -y