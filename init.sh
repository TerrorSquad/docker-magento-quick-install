#!/usr/bin/env bash
set -ex

if [ "$2" ]; then
    git clone https://github.com/TerrorSquad/docker-magento-quick-install.git "$1" && cd "$1"
fi

if [[ "$OSTYPE" == "darwin"* ]]; then
    sed -i '' -e "s/project_name/$1/g" docker-compose.yml
else
    sed -i -e "s/project_name/$1/g" docker-compose.yml
fi
cp config/nginx/default.conf.sample config/nginx/default.conf &&
    cp config/nginx/nginx.conf.sample config/nginx/nginx.conf
