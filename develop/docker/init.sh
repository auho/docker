#!/bin/bash

basePath=$(cd `dirname $0`;pwd)
localPath=${basePath}

dataFolder=(
"www"
"conf"
"db"
"logs"
)

for f in ${dataFolder[@]}
do
    folder="/data/${f}"
    if [[ !-e "${folder}" ]]; then
        mkdir -p ${folder}
    fi
done

docker network create app
docker network create db

