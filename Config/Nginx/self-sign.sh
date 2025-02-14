#!/bin/bash
# ./self-sign.sh local.vaultwarden
commonname=$1
path="Config/Nginx/certs"

if [[ ! -d $path ]]; then
    mkdir -p $path
fi

openssl req -x509 -newkey rsa:2048 -keyout $path/$commonname-key.pem -out $path/$commonname-crt.pem -days 3650 -nodes -subj \
"/C=ID/ST=Jawa Timur/L=Surabaya/O=HomeLAB/OU=Org/CN=$commonname"