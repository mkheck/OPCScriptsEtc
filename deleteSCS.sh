#!/bin/bash

# Variables
ACCOUNT_URL="https://storage.us2.oraclecloud.com/v1/Storage-<IDENTITY DOMAIN NAME>"
CONTAINER="<NAME OF CONTAINER TO DELETE"

# Obtain authorization token
curl -v -H GET -H 'X-Storage-User: Storage-<IDENTITY DOMAIN NAME>:<USER ID>' -H 'X-Storage-Pass: <IDENTITY DOMAIN PASSWORD>' https://storage.us2.oraclecloud.com/auth/v1.0 &> authresponse.txt
AUTH_TOKEN="'X-Auth_Token: $(awk '/X-Auth-Token:/{b=$3}END{print b}' authresponse.txt)'"

# Delete container
echo "curl -i $ACCOUNT_URL/$CONTAINER -X DELETE -H ‘Content-Length: 0’ -H $AUTH_TOKEN" > ./deleteContainer.sh
echo "curl -i $ACCOUNT_URL -X GET -H $AUTH_TOKEN" >> ./deleteContainer.sh

# Delete storage container
chmod 744 ./deleteContainer.sh
./deleteContainer.sh
