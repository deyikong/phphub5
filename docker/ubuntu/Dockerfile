FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninterative


RUN apt-get update
RUN apt-get install -y --no-install-recommends --no-install-suggests php
# apt-cache policy php-*   local cache, information about the those cached package meta data,
# RUN apt-get install -y --no-install-recommends --no-install-suggests php-<packageName>
# php -m    list modules