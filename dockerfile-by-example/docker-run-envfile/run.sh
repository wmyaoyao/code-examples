#!/bin/bash

docker run \
    --env-file global.env \
    --env-file local.env \
    alpine env
