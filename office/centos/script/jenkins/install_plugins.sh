#!/bin/bash

basePath=$(cd `dirname $0`;pwd)

source ${basePath}"/common.sh"

: '
workPath
jenkinsJobsPath
cliCommand
'

cd ${workPath}

pluginList=(
"https://plugins.jenkins.io/rebuild"
"https://plugins.jenkins.io/role-strategy"
"https://plugins.jenkins.io/thinBackup"
)

for plugin in ${pluginList[@]}
do
    docker-compose exec jenkins bash -c "${cliCommand} install-plugin ${plugin}"
done
