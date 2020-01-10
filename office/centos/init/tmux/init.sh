#!/bin/bash

basePath=$(cd `dirname $0`; pwd)

yum install -y gem tmux

#yum install centos-release-scl-rh
#yum install -y rh-ruby23
#scl enable rh-ruby23 bash
#ln -s /opt/rh/rh-ruby23/root/usr/bin/ruby /usr/local/bin/ruby

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
curl -sSL https://get.rvm.io | bash -s stable
source  /etc/profile.d/rvm.sh
rvm list known
read -p "Select Ruby Version: " version
rvm install ${version}

gem sources -a https://gems.ruby-china.com
gem install tmuxinator

tmuxinator new main

ln -s /usr/local/rvm/gems/ruby-${version}/gems/tmuxinator-1.1.1/bin/tmuxinator /usr/local/bin/tmuxinator

mkdir -p ~/.config
cp ${basePath}"/main.yml" ~/.config/tmuxinator/
cp ${basePath}"/.tmux.conf" ~/.tmux.conf
