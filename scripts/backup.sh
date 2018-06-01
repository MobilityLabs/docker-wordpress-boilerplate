#!/bin/bash

# load env variables
source .env

docker exec $MYSQL_CONTAINER_NAME sh -c 'exec mydumper \
--database=$MYSQL_DATABASE \
--host=localhost \
--user=root \
--password="$MYSQL_ROOT_PASSWORD" \
--outputdir=/home/database/ \
--rows=500000 \
--build-empty-files \
--threads=2 \
--compress-protocol'

echo 'Backup complete'
