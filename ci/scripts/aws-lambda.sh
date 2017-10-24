#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace


mkdir ~/.aws
cd ~/.aws
echo '[profile default]
region = us-west-2
role_arn = arn:aws:iam::300813158921:role/GroupAccess-Developers-Channels
source_profile = default' > config

echo '[default]
aws_access_key_id=ASIAI2UWEB7L5ZZ2FRBA
aws_secret_access_key=x/F+zycN1IgY6mRX7YCxsOjVRBtRImNLsqgyGmyZ
aws_session_token=FQoDYXdzEDAaDG1bXew8aH6YV5jblyKwAZagx4IJtEDaUmcJsCE2y8tH8yGlGrGLzmc1eX4yJEuN/9zv5mZL00fkbBUEu+ZhwdFDTLB6FMX0/Aa7sMh/Vzf3rpzPNQ0+TX89SIwu/f+nkfR97QkLmL7iOLKVzwVz23/1zucHJFCkRC6S8lYdDV6LEbwmuQDrfarNCokjoenIz2GEyuV1IDkc5AWbN+qQRMIMNaqrA95pSAs0iJUTj/ZQgVViSU/KMPQmgiMGt46kKNmpvc8F' > credentials

cd - 
cd project-src/src
gulp deploy