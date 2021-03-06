#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

CNAME=web1
docker rm -fv $CNAME
docker run -d --name $CNAME \
  -v $DIR/www1:/usr/share/nginx/html:ro \
  -v $DIR/nginx/conf.d:/etc/nginx/conf.d:ro \
  -p 10081:80 \
  nginx:alpine

CNAME=web2
docker rm -fv $CNAME
docker run -d --name $CNAME \
  -v $DIR/www2:/usr/share/nginx/html:ro \
  -v $DIR/nginx/conf.d:/etc/nginx/conf.d:ro \
  -p 10082:80 \
  nginx:alpine

CNAME=lb-example-proxy
docker rm -fv $CNAME
docker run -d --name $CNAME \
      -p 10080:10080 \
      -p 9527:9527 \
        -v $DIR/haproxy.cfg:/usr/local/etc/haproxy/haproxy.cfg:ro \
          haproxy:1.6-alpine

echo "curl localhost:10080"
curl localhost:10080
curl localhost:10080
