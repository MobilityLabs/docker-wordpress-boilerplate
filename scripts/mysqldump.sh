#!/bin/bash

# load env variables
source .env

docker exec $MYSQL_CONTAINER_NAME sh -c 'exec mysqldump \
"$MYSQL_DATABASE" \
--user=root \
--password="$MYSQL_ROOT_PASSWORD" \
--result-file=/home/database/databases.sql \
--no-create-db'

echo 'Backup complete'
