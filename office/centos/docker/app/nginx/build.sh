#!/usr/bin/env bash

basePath=$(cd `dirname $0`;pwd)

mkdir -p /data/conf/nginx/conf.d
cp ${basePath}/conf/conf.d/default.conf /data/conf/nginx/conf.d/
cp ${basePath}/conf/nginx.conf /data/conf/nginx/nginx.conf
