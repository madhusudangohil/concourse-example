#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

aws lambda list-functions --profile dev --region us-west-2