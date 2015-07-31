#!/bin/bash

# Create DBCS instance
curl -X POST -u <USER ID>:<IDENTITY DOMAIN PASSWORD> -d @createDBCSRequestBody.json -H "X-ID-TENANT-NAME:<IDENTITY DOMAIN NAME>" -H "Content-Type:application/json" -i https://dbaas.oraclecloud.com/jaas/db/api/v1.1/instances/<IDENTITY DOMAIN NAME>
