#!/usr/bin/env bash

./bin/init/install_sql_proxy.sh
mkdir /tmp/cloudsql
./bin/cloud_sql_proxy -dir=/tmp/cloudsql  -instances=raven-185914:us-central1:raven-api -credential_file=storage/app/cloud-credentials.json &

# Need a second to make sure it's up
sleep 1

php "$@"
