#!/bin/bash

containerdVersion="1.2.6-3.3"
ceCliVersion="19.03.5-3"
ceVersion="19.03.5-3"

composeVersion="1.25.1"

yum update -y
yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/containerd.io-${containerdVersion}.el7.x86_64.rpm
yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-cli-${ceCliVersion}.el7.x86_64.rpm
yum install -y https://download.docker.com/linux/centos/7/x86_64/stable/Packages/docker-ce-${ceVersion}.el7.x86_64.rpm
systemctl enable docker
systemctl start docker

sudo curl -L "https://github.com/docker/compose/releases/download/${composeVersion}/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose

groupadd dev
useradd dev -g dev

groupadd develop
useradd develop -g develop

groupadd git
useradd git -g git

usermod -G docker dev

yum install -y zsh git

chsh -s /bin/zsh dev
chsh -s /bin/zsh develop
