#!/bin/bash

REPO=docker-reg.wmyaoyao.pw:55688
# The name of the container, should use the name of the repo is possible
# <EDIT_ME>
CONTAINER=golang-dev
# </EDIT_ME>
TAG=latest
DOCKER_IMAGE=$REPO/$CONTAINER:$TAG

# global config:
globalConf="
"
#  --restart always \
# <EDIT_ME>
moduleConf="
  -p 9000:9000\
"
# </EDIT_ME>

ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
docker rm -f -v $CONTAINER
cmd="docker run -it --rm --name $CONTAINER \
  $globalConf \
  $moduleConf \
  -v "$ROOT/..":/go/src/app \
  $DOCKER_IMAGE \
"
echo $cmd
eval $cmd
