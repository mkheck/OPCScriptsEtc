#!/bin/bash

# Create JCS instance
curl -X POST -u <USER ID>:<IDENTITY DOMAIN PASSWORD> -d @createJCSRequestBody.json -H "Content-Type:application/vnd.com.oracle.oracloud.provisioning.Service+json" -H "X-ID-TENANT-NAME:<IDENTITY DOMAIN NAME>" -i https://jaas.oraclecloud.com/jaas/api/v1.1/instances/<IDENTITY DOMAIN NAME>
