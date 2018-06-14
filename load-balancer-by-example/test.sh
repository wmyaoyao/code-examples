#!/bin/bash
MAX=10

echo "# Curl without header"
for (( i=1; i<$MAX; i++ ))
do
  curl localhost:10080
done

USERID="5566"
echo "# Curl with header: $USERID"
for (( i=1; i<$MAX; i++ ))
do
  curl -H "X-Lb-Uid: $USERID" localhost:10080
done


USERID="3Q9527"
echo "# Curl with header: $USERID"
for (( i=1; i<$MAX; i++ ))
do
  curl -H "X-Lb-Uid: $USERID" localhost:10080
done
