#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

docker run -it -v $HOME/.aws:/home/aws/.aws berrycloud/maven-aws-cli-node aws lambda list-functions --profile dev --region us-west-2