#!/bin/bash
if [ ! -f wp-config.php ]; then

    wp core download

    wp config create \
        --dbuser=$WORDPRESS_DB_USER \
        --dbpass=$WORDPRESS_DB_PASSWORD \
        --dbname=$WORDPRESS_DB_NAME \
        --dbhost=$WORDPRESS_DB_HOST \

    wp core install \
        --url=$WORDPRESS_URL \
        --title=$WORDPRESS_TITLE \
        --admin_user=$WORDPRESS_ADMIN_USER \
        --admin_email=$WORDPRESS_ADMIN_EMAIL \
        --admin_password=$WORDPRESS_ADMIN_PASSWORD \


    wp user create $WORDPRESS_USER $WORDPRESS_EMAIL --role=author --user_pass=$WORDPRESS_USER_PASSWORD

fi

exec "$@"
