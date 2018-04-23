#!/usr/bin/env bash

export PHP_ACCOUNT=deyikong
export PHP_REPO=php
export PHP_TAG=2018-04-23
export PHP_IMAGE=${PHP_ACCOUNT}/${PHP_REPO}:${PHP_TAG}

export PHP_DEBUG_ACCOUNT=$PHP_ACCOUNT
export PHP_DEBUG_REPO=php-debug
export PHP_DEBUG_TAG=2018-04-23
export PHP_DEBUG_IMAGE=${PHP_DEBUG_ACCOUNT}/${PHP_DEBUG_REPO}:${PHP_DEBUG_TAG}

export WEB_HOST=$CLOUD_HOST
export WEB_ACCOUNT=$CLOUD_ACCOUNT
export WEB_REPO=api-web
export WEB_TAG=2018-01-10
export WEB_IMAGE=${WEB_HOST}/${WEB_ACCOUNT}/${WEB_REPO}:${WEB_TAG}

export MYSQL_REPO=mysql
export MYSQL_TAG=5.7.20
export MYSQL_IMAGE=${MYSQL_REPO}:${MYSQL_TAG}

export NODE_REPO=node
export NODE_TAG=9.2.0
export NODE_IMAGE=${NODE_REPO}:${NODE_TAG}

export SED_REPO=alpine
export SED_TAG=edge
export SED_IMAGE=${SED_REPO}:${SED_TAG}


