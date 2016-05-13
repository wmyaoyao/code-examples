#!/bin/bash

echo "# We need a separate build script to build docker"

# Do a lot of things, git pull, download files, ...

DOCKER_REG=local-repo:5566
DOCKER_NAME=/test/app1
DOCKER_TAG=latest
DOCKER_IMG=${DOCKER_REG}${DOCKER_NAME}:${DOCKER_TAG}

docker build -t $DOCKER_IMG -f Dockerfile.app1 .
