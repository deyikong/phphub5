#!/usr/bin/env bash

gcloud config set project $DATASTORE_PROJECT_ID

gcloud beta emulators datastore start --host-port=$DATASTORE_LISTEN_ADDRESS --no-store-on-disk
