#!/bin/bash

# load env variables
source .env

docker exec $MYSQL_CONTAINER_NAME sh -c 'exec mysqldump \
"$MYSQL_DATABASE" \
--user=root \
--password="$MYSQL_ROOT_PASSWORD" \
--result-file=/home/database/databases.sql \
--no-create-db'

# Use said to replace the url in the db with the production server url
sed -i "s|http\:\/\/localhost\:8080|$PRODUCTION_SERVER|g" database/databases.sql

echo 'Backup complete'
