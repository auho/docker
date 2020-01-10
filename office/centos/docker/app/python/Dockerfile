ARG VERSION
FROM python:${VERSION}-stretch

LABEL author="auho auho@163.com"

RUN echo "Asia/Shanghai" > /etc/timezone \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

COPY pip.conf /root/.pip/pip.conf
COPY requirement.txt /requirement.txt

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir --upgrade setuptools \
    && pip install --no-cache-dir -r /requirement.txt
