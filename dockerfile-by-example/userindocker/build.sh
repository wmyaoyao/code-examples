#!/bin/bash

# ubuntu
docker build -t test/usertest:ubuntu -f Dockerfile.ubuntu .

# alpine
docker build -t test/usertest:alpine -f Dockerfile.alpine .
