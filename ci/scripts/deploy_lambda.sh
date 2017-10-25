#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

npm install --global gulp-cli

cd - 
cd concourse-example
pwd

npm install

gulp deploy