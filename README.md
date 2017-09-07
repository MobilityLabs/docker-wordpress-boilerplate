# Docker Wordpress Boilerplate
Basic WordPress site running with mysql 5.6 on Docker.

## Get started
* Install Docker
* Start docker
* `$ sudo docker-compose up` to create containers
* Load Database using command below

### Default credentials
username: `admin` </br>
password: `password`

### Load a DB dump
`$ ./scripts/restore.sh`

Note: If you have issues, make sure the script is executable.

## Commiting WordPress changes
If creating a non-code based change to the site *e.g. creating a new page via the WordPress GUI*:
* Create a new **DB Dump** via the command below.
* Add `/database` to a fresh commit

### Create a DB dump
`$ ./scripts/backup.sh`

Note: If you have issues, make sure the script is executable.
