#!/bin/bash

# Adds the scanner to the config on startup...

if [ -z "${SCANNER_NAME}" ]; then
    SCANNER_NAME="Brother"
fi

brsaneconfig5 -a \
    name="${SCANNER_NAME}" \
    model="${SCANNER_MODEL}" \
    nodename="${SANED_NET_HOSTS}"

/run.sh