#!/usr/bin/env bash
set -ex

if [ "$2" ]; then
    git clone https://github.com/TerrorSquad/docker-magento-quick-install.git "$1" && cd "$1"
fi

cp config/nginx/default.conf.sample config/nginx/default.conf &&
    cp config/nginx/nginx.conf.sample config/nginx/nginx.conf
