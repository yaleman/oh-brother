#!/bin/bash

#shellcheck disable=SC1091
source .env
docker build --platform linux/amd64  \
    --build-arg "SCANNER_MODEL=${SCANNER_MODEL}" \
    --build-arg "SCANNER_IP=${SANED_NET_HOSTS}" \
    -t "yaleman/oh-brother:latest"  .
