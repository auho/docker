FROM centos:7

LABEL author="auho auho@163.com"

RUN yum update -y \
    && yum install -y git mysql crontabs gcc \
    && yum install -y epel-release \
    && yum install -y https://centos7.iuscommunity.org/ius-release.rpm \
    && yum install -y python36u python36u-devel \
    && ln -s /bin/python3.6 /bin/python3 \
    && yum install -y python36u-pip \
    && ln -s /bin/pip3.6 /bin/pip3 \
    && ln -s /bin/pip3.6 /bin/pip

RUN mkdir -p /data/run \
    && cd /data/run \
    && git clone https://github.com/olajowon/loggrove.git

COPY settings.py /data/run/loggrove/settings.py
COPY build.py /data/run/loggrove/build.py

RUN ln -sf /bin/python3.6 /bin/python \
    && pip3 install --upgrade pip \
    && pip3 install ldap \
    && cd /data/run/loggrove \
    && export LANG=en_US.UTF-8 \
    && python3 build.py

WORKDIR /data/run/loggrove
CMD ["python3", "start.py", "--port=8080"]