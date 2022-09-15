#!/bin/sh

MKCERT_WORKDIR=/opt/mkcert/out

CERT_FILE=$1
KEY_FILE=$2
HOST_NAME=$3

./mkcert -install
./mkcert -cert-file "${MKCERT_WORKDIR}/${CERT_FILE}" \
    -key-file "${MKCERT_WORKDIR}/${KEY_FILE}" "${HOST_NAME}"
