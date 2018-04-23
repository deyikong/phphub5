#!/usr/bin/env bash

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../../" && pwd)"

TAG=${1:-$(date '+%Y-%m-%d')}

. "${ROOT}/docker/lib/images.sh"

docker build "$ROOT/docker/php" --tag=${PHP_HOST}/${PHP_ACCOUNT}/${PHP_REPO}:${TAG}
docker build "$ROOT/docker/web" --tag=${WEB_HOST}/${WEB_ACCOUNT}/${WEB_REPO}:${TAG}
docker build "$ROOT/docker/datastore" --tag=${DATASTORE_HOST}/${DATASTORE_ACCOUNT}/${DATASTORE_REPO}:${TAG}
