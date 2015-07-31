#!/bin/bash

# Obtain authorization token
curl -v -H GET -H 'X-Storage-User: Storage-<IDENTITY DOMAIN NAME>:<USER ID>' -H 'X-Storage-Pass: <IDENTITY DOMAIN PASSWORD>' https://storage.us2.oraclecloud.com/auth/v1.0 &> authresponse.txt
AUTH_TOKEN="'X-Auth_Token: $(awk '/X-Auth-Token:/{b=$3}END{print b}' authresponse.txt)'"

echo "curl -i https://storage.us2.oraclecloud.com/v1/Storage-<IDENTITY DOMAIN NAME>/<CONTAINER 1 NAME> -X PUT -H ‘Content-Length: 0’ -H $AUTH_TOKEN" > ./createContainers.sh
echo "curl -i https://storage.us2.oraclecloud.com/v1/Storage-<IDENTITY DOMAIN NAME>/<CONTAINER 2 NAME> -X PUT -H ‘Content-Length: 0’ -H $AUTH_TOKEN" >> ./createContainers.sh
echo "curl -i https://storage.us2.oraclecloud.com/v1/Storage-<IDENTITY DOMAIN NAME> -X GET -H $AUTH_TOKEN" >> ./createContainers.sh

# Create storage containers
chmod 744 ./createContainers.sh
./createContainers.sh
