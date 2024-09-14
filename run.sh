#!/bin/sh
set -x
if [ -f ./.env ]; then
    set -a
    . ./.env
    set +a
fi


docker-compose  -f ./redis/docker-compose.yaml \
    -f ./zoo/docker-compose_3_4_9.yaml \
    -p "${PROJECT_NAME}"  \
    up -d
