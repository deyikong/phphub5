#!/usr/bin/env bash

# this has to be done at runtime, because the /etc/hosts file is replaced at startup by Docker
# echo '127.0.0.1 phphub5.app' >> /etc/hosts

supervisord -n
