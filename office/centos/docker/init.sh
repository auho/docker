#!/bin/bash

basePath=$(cd `dirname $0`;pwd)

dirList=("www" "conf" "db" "logs")

for d in ${dirList[@]}
do
    mkdir -p "/data/${d}"
done

appList=(
"php"
"nginx"
)

for app in ${appList[@]}
do
    mkdir -p /data/conf/"${app}"
    mkdir -p /data/logs/"${app}"
done

dbList=(
"mysql"    
"mongo"
)

for db in ${dbList[@]}
do
    mkdir -p /data/conf/"${db}"
    mkdir -p /data/db/"${db}"
    mkdir -p /data/logs/"${db}"
done

opsList=(
"jenkins"
)

for ops in ${opsList[@]}
do
    mkdir -p /data/conf/"${ops}"
    mkdir -p /data/logs/"${ops}"
done

docker network create app
docker network create db
docker network create ops