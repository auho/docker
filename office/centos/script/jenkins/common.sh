#!/bin/bash

workPath="/data/devops/server/docker/service"
jenkinsCliJarFile="/var/jenkins_home/war/WEB-INF/jenkins-cli.jar"
jenkinsHost="http://localhost:8080/"
jenkinsJobsPath="/data/devops/script/jenkins/jobs"

auth=
authCode=

cliCommand="java -jar ${jenkinsCliJarFile} -s ${jenkinsHost} -auth ${auth}:${authCode}"