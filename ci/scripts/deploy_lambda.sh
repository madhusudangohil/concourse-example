#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

npm install --global gulp-cli

mkdir ~/.aws
mv aws-cred/* ~/.aws/

cd concourse-example

npm install

ls ~/.aws

gulp deploy