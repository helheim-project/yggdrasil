#!/bin/bash -ex
PARAMETER_NAME=$1
PARAMETER_POWER=$2

NAME="${PARAMETER_NAME:-heimdall}"
POWER="${PARAMETER_POWER:-on}"
URL="http://${NAME}/cm?cmnd=Power%20${POWER}"
echo "call with: ${URL}"

curl -X GET "${URL}"
