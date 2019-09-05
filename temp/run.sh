#!/bin/sh

# Wait for the Database server before continuing

# !!!! This code does not work need to check correct shell or convert it

# if [[ -z $MYSQL_HOST || -z $MYSQL_PORT || -z $MYSQL_USER || -z $MYSQL_PASSWORD ]]; then
#     echo "The following ENV vars are required"
#     echo "    MYSQL_HOST"
#     echo "    MYSQL_PORT"
#     echo "    MYSQL_USER"
#     echo "    MYSQL_PASSWORD"
#     echo "to be set. Exiting."
#     exit 1
# fi
# max_tries=12
# attempt_num=0
# until (echo > "/dev/tcp/$MYSQL_HOST/$MYSQL_PORT") >/dev/null 2>&1; do
#     echo "Waiting for mysql server $MYSQL_HOST ($attempt_num/$max_tries)"
#     sleep $(( attempt_num++ ))
#     if (( attempt_num == max_tries )); then
#         exit 1
#     fi
# done

# Install WordPress
wp core install --url=$WP_URL --title="$WP_TITLE" --admin_user=$WP_ADMIN_USER --admin_email="$WP_ADMIN_EMAIL" --admin_password="$WP_ADMIN_PASSWORD" --skip-email
sudo -u www-data wp core install --title="$WP_TITLE" --admin_user=$WP_ADMIN_USER --admin_email="$WP_ADMIN_EMAIL" --admin_password="$WP_ADMIN_PASSWORD" --skip-email
# Start wordpress
