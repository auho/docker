FROM puckel/docker-airflow:1.10.1

LABEL author="auho auho@163.com"

USER root

RUN echo "Asia/Shanghai" > /etc/timezone \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN apt-get update \
    && apt-get install -y libpcre2-dev

COPY pip.conf /root/.pip/pip.conf
COPY requirement.txt /requirement.txt

RUN pip install --no-cache-dir --upgrade pip \
    && pip install --no-cache-dir flask-bcrypt

RUN pip install --no-cache-dir -r /requirement.txt

USER airflow