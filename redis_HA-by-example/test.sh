#!/bin/bash
MASTER_IP=$(docker inspect --format '{{ .NetworkSettings.Ports }}' redishabyexample_redis-master_1)
#SLAVE_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' rediscluster_slave_1)
#SENTINEL_IP=$(docker inspect --format '{{ .NetworkSettings.IPAddress }}' rediscluster_sentinel_1)

echo $MASTER_IP
#TBD:
#SEE
#https://github.com/AliyunContainerService/redis-cluster/blob/master/test.sh
