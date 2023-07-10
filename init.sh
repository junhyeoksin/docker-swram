#!/bin/sh

mkdir -p guac/postgres
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --postgres > guac/initdb.sql
wget https://raw.githubusercontent.com/junhyeoksin/docker-swram/main/guacamole.yml
vim guacamole.yml
docker stack deploy --with-registry-auth -c guacamole.yml guac
