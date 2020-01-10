#!/usr/bin/env bash

basePath=$(cd `dirname $0`;pwd)

mkdir -p /data/conf/redis/
cp ${basePath}/conf/redis.conf /data/conf/redis/redis.conf
