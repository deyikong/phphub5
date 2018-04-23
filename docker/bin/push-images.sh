#!/usr/bin/env bash

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../" && pwd)"

. "${ROOT}/docker/lib/images.sh"

gcloud docker -- push ${PHP_IMAGE}
gcloud docker -- push ${WEB_IMAGE}
gcloud docker -- push ${DATASTORE_IMAGE}
