#!/bin/bash

basePath=$(cd `dirname $0`;pwd)

ssh-keygen
touch /home/git/.ssh/authorized_keys

mkdir -p /data/db/gogs
cp gogs.sh /data/db/gogs/ssh-gogs
chmod a+x /data/db/gogs/ssh-gogs

/data/db/gogs/ssh-gogs
