#!/bin/bash

basePath=$(cd `dirname $0`;pwd)

source ${basePath}"/common.sh"

: '
workPath
jenkinsJobsPath
cliCommand
'

cd ${workPath}

job="RUN_AIRFLOW"
docker-compose exec jenkins bash -c "${cliCommand} create-job ${job} < ${jenkinsConfPath}/${job}"