#!/bin/bash
# load env variables
source .env

sudo docker exec $MYSQL_CONTAINER_NAME sh -c 'exec myloader \
--database=$MYSQL_DATABASE \
--password=$MYSQL_ROOT_PASSWORD \
--directory=/home/database/ \
--queries-per-transaction=50000 \
--overwrite-tables \
--threads=1 \
--compress-protocol \
--verbose=3'
echo 'Restore complete'
