#!/usr/bin/env bash
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
docker run --restart=always \
    -v `pwd`/sa:/gd-utils/sa \
    -v `pwd`/config.js:/gd-utils/config.js \
    -p 23333:23333 --name gd-utils -d gd-utils
