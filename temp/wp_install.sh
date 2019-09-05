#!/bin/sh

# Install the latest version of the wordpress files
wp core download

# Configure the wp install
wp config create --force --skip-check --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost="$MYSQL_HOST:$MYSQL_PORT"
sudo -u www-data wp config create --force --skip-check --dbname="$MYSQL_DATABASE" --dbuser="$MYSQL_USER" --dbpass="$MYSQL_PASSWORD" --dbhost="$MYSQL_HOST:$MYSQL_PORT"
