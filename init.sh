#!/usr/bin/env bash
if [ "$2" ]; then
    git clone https://github.com/TerrorSquad/docker-magento-quick-install.git "$1" && cd "$1"
fi

git config --global core.autocrlf false
git config --global core.eol LF
git config --global core.fileMode false
git config --global diff.renamelimit 5000

sed -i docker-compose.yml -e "s/project_name/$1/g"
cp env/default.conf.sample env/default.conf &&
    cp env/nginx.conf.sample env/nginx.conf
