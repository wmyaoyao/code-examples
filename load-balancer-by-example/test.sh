#!/bin/bash
MAX=10
for (( i=1; i<$MAX; i++ ))
do
  curl localhost:10080
done
