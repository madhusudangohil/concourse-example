#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o xtrace

npm install --global gulp-cli

mkdir ~/.aws
cd ~/.aws
echo '[profile default]
region = us-west-2
role_arn = arn:aws:iam::300813158921:role/GroupAccess-Developers-Channels
source_profile = default' > config

echo '[default]
aws_access_key_id=ASIAJYYMWURL6QW5S7KA
aws_secret_access_key=JaCk+NB47sTJk6aoqCRCSa77HriTa0d6J1j7lM9E
aws_session_token=FQoDYXdzEL///////////wEaDJk29I6D4sFCely7aiKwAW48aXvPzbFgoEk9JT4Zu/MDE/wkukKv/1zbnrD+AYWNav9uXqtZSakzfVcdIGV1PFgWKSRWjUDt5T831OUMbunpQEFF7QYsko0hD12V1WyMnFHZnptGLmbv++6WHfXYOfEB45rdDWXkMFFVSGGOMMY9fBXXWtDfc1gv5+U1ly6vJ4RO+UY21swSmuoByqfXc/RsZeuEv7iUXgIqkMd9Ci587kYqnPd1BZNKtskiEomyKMja3M8F' > credentials

cd - 
cd project-src
pwd

npm install

gulp deploy