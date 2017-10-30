#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

ls

mkdir -p aws-cred

echo '[profile default]
region = us-west-2
role_arn = 
source_profile = default' > aws-cred/config

echo '[default]
aws_access_key_id=
aws_secret_access_key=
aws_session_token=' > aws-cred/credentials

ls

ls aws-cred
