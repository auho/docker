#!/bin/bash

basePath=$(cd `dirname $0`;pwd)

source ${basePath}"/common.sh"

: '
workPath
jenkinsJobsPath
cliCommand
'

cd ${workPath}

jobList=$(docker-compose exec jenkins bash -c "${cliCommand} list-jobs")

for job in $(echo $jobList | tr -d '\r')
do
    echo "job is: ${job}"
    docker-compose exec jenkins bash -c "${cliCommand} get-job ${job}" > ${jenkinsJobsPath}"/${job}"
done
