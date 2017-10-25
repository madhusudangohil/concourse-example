#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

cd concourse-example

pwd

npm install
npm test