#!/bin/bash

echo userId=$1

curl  -X GET localhost:10080/index.html?userId=$1

curl  -v -d "userId=$1" -X POST localhost:10080/index.html
