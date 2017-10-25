#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

npm install --global gulp-cli

mkdir ~/.aws
cd ~/.aws
echo '[profile default]
region = us-west-2
role_arn = 
source_profile = default' > config

echo '[default]
aws_access_key_id=
aws_secret_access_key=
aws_session_token=' > credentials

cd - 
cd project-src
pwd

npm install

gulp deploy
