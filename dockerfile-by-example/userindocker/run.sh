#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage $0 <dist>, e.g.,"
  echo "$ $0 ubuntu"
  echo "$ $0 alpine"
  exit 0
fi

IMG=test/usertest
TAG=$1
docker run -it $IMG:$TAG /bin/bash
