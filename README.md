# Docker Wordpress Boilerplate
Basic WordPress site running with mysql 5.7 on Docker.

## Get started
* Install Docker
* Start docker
* `$ sudo docker-compose up` to create containers
* Load Database using command below

### Default credentials
username: `admin` </br>
password: `password`

### Load a DB dump
`$ sudo docker exec mysql sh -c 'exec mysql "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD" < /home/databases.sql'`

## Commiting WordPress changes
If creating a non-code based change to the site *e.g. creating a new page via the WordPress GUI*:
* Create a new **DB Dump** via the command below.
* Add `/databases.sql` to a fresh commit

### Create a DB dump
`$ sudo docker exec mysql sh -c 'exec mysqldump --databases "$MYSQL_DATABASE" -uroot -p"$MYSQL_ROOT_PASSWORD"' > ./databases.sql`
