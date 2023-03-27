#!/bin/bash

# Downloads the latest version of the Brother scan software.

DOWNLOAD_URL="$(curl -s "https://support.brother.com/g/b/downloadhowto.aspx?c=us_ot&lang=en&prod=ads2400n_all&os=128&dlid=dlf104033_000&flang=4&type3=566" | grep '\.deb' | cut -d'=' -f3 | cut -d'"' -f2)"

if [ -z "${DOWNLOAD_URL}" ]; then
    echo "Couldn't parse download URL!"
    exit 1
fi
echo "Downloading from ${DOWNLOAD_URL}"

curl -o brscan.deb "${DOWNLOAD_URL}"
