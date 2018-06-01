# Docker WordPress Boilerplate
Basic WordPress site running with mysql 5.6 on Docker. Comes with a theme that uses SCSS, minifies images, and bundles JSON.

## Get started
* Install docker
* Install docker-compose
* Start docker daemon (if it isn't running)
* Update the .env in root if you need to (nothing sensitive in here)
* `docker-compose up --build` to create containers
* Load database using `./scripts/restore.sh`

### Making changes to SCSS or JS
* Install node locally (for now)
* Install yarn
* Use `./scripts/watch-assets.sh` to start watchers that will rebuild SCSS and JS
* Ensure cache is clearing when you reload or you will not see changes

### Default Wordpress Admin credentials
username: `admin` </br>
password: `password`

### Load a DB dump
`./scripts/restore.sh`

Note: If you have issues, make sure the script is executable via `chmod +x ./scripts/restore.sh`

## Commiting WordPress changes
If creating a non-code based change to the site *e.g. creating a new page via the WordPress GUI*:
* Create a new **DB Dump** via the command below.
* Add `./database/` to a fresh commit

### Create a DB dump
`./scripts/backup.sh`

Note: If you have issues, make sure the script is executable via `chmod +x ./scripts/backup.sh`

## Deploying to Server
* Generate minified css and js using `./scripts/generate-production-assets.sh`
* Create a mysql dump `./scripts/mysqldump.sh`
* Use ftp to move all files from `/wp-content` to Server
* Drop all existing tables in Server phpMyAdmin
* Import mysqldump from `./database/databases.sql` using Server phpMyAdmin
* Change admin password to something secure
