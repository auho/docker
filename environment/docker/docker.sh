#!/usr/bin/env bash
# install docker

## centos
# https://download.docker.com/linux/centos/7/x86_64/stable/Packages/
containerdVersion="1.2.6-3.3"
ceCliVersion="19.03.5-3"
ceVersion="19.03.5-3"

yum update -y
yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-${containerdVersion}.el7.x86_64.rpm
yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-${ceCliVersion}.el7.x86_64.rpm
yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-${ceVersion}.el7.x86_64.rpm

## debian
# https://download.docker.com/linux/debian/dists/
dpkg -i package.deb

## fedora
# https://download.docker.com/linux/fedora/
dnf -y install package.rpm

## ubuntu
#  https://download.docker.com/linux/ubuntu/dists/
dpkg -i package.deb


## add user docker group
sudo gpasswd -a ${USER} docker