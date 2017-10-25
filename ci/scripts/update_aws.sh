#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

ls

mkdir -p aws-cred

echo '[profile default]
region = us-west-2
role_arn = arn:aws:iam::300813158921:role/GroupAccess-Developers-Channels
source_profile = default' > aws-cred/config

echo '[default]
aws_access_key_id=ASIAIN4O3NH73IWMPRXQ
aws_secret_access_key=iiSyV0OIPicD4Pi+RuuGdF7RpOaBmeM6p0J0JSBt
aws_session_token=FQoDYXdzEEcaDJmhvAC42AL3bgxVXyKwAYlvr/yI0z3s4WR8kMaidKxcxmhADVS8rwboWM/TQ7TVnoaHpg/e4keIrKJcbn9kArzhLRYl50MGzH85jB64AKsczjqP852rWM2wgs6oL4NGcniCXsMM22dTce6rFdtaPj03solgij/w0pWgaGmu0YWtHzVNb3mQ0s0yiP0ngNFvPLStJ4Rw6/AwTORZSJZb1Euw+Jj/DocCTVnpwzutR5OmZNF4R02HcjKmlNYxzC76KKS6ws8F' > aws-cred/credentials

ls

ls aws-cred