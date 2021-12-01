#!/usr/bin/env bash
set -ex

if [ "$2" ]; then
    git clone https://github.com/TerrorSquad/docker-magento-quick-install.git "$1" && cd "$1"
fi

sed -e "s/project_name/$1/g" docker-compose.yml >docker-compose.yml.new &&
    mv -f docker-compose.yml.new docker-compose.yml

cp config/nginx/default.conf.sample config/nginx/default.conf &&
    cp config/nginx/nginx.conf.sample config/nginx/nginx.conf
