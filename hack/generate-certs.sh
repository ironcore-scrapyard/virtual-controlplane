#!/bin/bash

set -e

cd auth/

#openssl genpkey -algorithm RSA -out private_key.pem -pkeyopt rsa_keygen_bits:2048

cfssl gencert -initca ca-csr.json | cfssljson -bare ca
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem --config=ca-config.json -profile=kubernetes server-csr.json | cfssljson -bare server
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem --config=ca-config.json -profile=kubernetes controller-manager-csr.json | cfssljson -bare controller-manager
cfssl gencert -ca=ca.pem -ca-key=ca-key.pem --config=ca-config.json -profile=kubernetes admin-csr.json | cfssljson -bare admin
