#!/bin/bash

set -e

cd auth/

FILE=private_key.pem
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
    openssl genpkey -algorithm RSA -out "$FILE" -pkeyopt rsa_keygen_bits:2048
fi

FILE=ca.pem
if [ -f "$FILE" ]; then
    echo "$FILE exists."
else
    echo "$FILE does not exist."
    cfssl gencert -initca ca-csr.json | cfssljson -bare ca
fi

FILE=server.pem
if [ -f "$FILE" ]; then
    echo "Kube-api server certificates already exist."
else
    echo "Kube-api server certificates do not exist. Generating ..."
    cfssl gencert -ca=ca.pem -ca-key=ca-key.pem --config=ca-config.json -profile=kubernetes server-csr.json | cfssljson -bare server
fi

FILE=controller-manager.pem
if [ -f "$FILE" ]; then
    echo "Controller manager certificates already exist."
else
    echo "Controller manager certificates do not exist. Generating ..."
    cfssl gencert -ca=ca.pem -ca-key=ca-key.pem --config=ca-config.json -profile=kubernetes controller-manager-csr.json | cfssljson -bare controller-manager
fi

FILE=admin.pem
if [ -f "$FILE" ]; then
    echo "Admin certificates already exist."
else
    echo "Admin certificates do not exist. Generating ..."
    cfssl gencert -ca=ca.pem -ca-key=ca-key.pem --config=ca-config.json -profile=kubernetes admin-csr.json | cfssljson -bare admin
fi
