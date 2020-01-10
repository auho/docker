FROM jenkins

LABEL author="auho auho@163.com"

USER root

COPY jenkins.war /usr/share/jenkins/jenkins.war

RUN apt-get update \
    && apt-get install -y libltdl7 \
    && chmod a+r /usr/share/jenkins/jenkins.war \
    && cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime \
    && mkdir -p /data/www \
    && chown -R jenkins:jenkins /data/www

ARG DOCKER_GID
RUN echo "docker:x:${DOCKER_GID}:jenkins" >> /etc/group

USER jenkins
