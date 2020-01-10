#!/bin/bash

version="2.213"

basePath=$(cd `dirname $0`;pwd)
cd ${basePath}

curl -o jenkins.war https://repo.jenkins-ci.org/public/org/jenkins-ci/main/jenkins-war/${version}/jenkins-war-${version}.war