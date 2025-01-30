FROM alpine:3.20

RUN apk update && apk add \
    php82 \
    php82-fpm \
    php82-json \
    php82-mysqli \
    php82-curl \
    php82-mbstring \
    php82-dom \
    php82-xml \
    php82-phar \
    php82-openssl \
    php82-session \
    mariadb-client \
    wget \
    bash

RUN mkdir -p /var/www/html && \
    wget https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar && \
    chmod +x wp-cli.phar && \
    mv wp-cli.phar /usr/local/bin/wp && \
    ln -s /usr/bin/php82 /usr/bin/php

COPY conf/www.conf /etc/php82/php-fpm.d/www.conf

COPY tools/entrypoint.sh /usr/local/bin/setup-wordpress.sh

RUN chmod +x /usr/local/bin/setup-wordpress.sh

WORKDIR /var/www/html

EXPOSE 9000

ENTRYPOINT ["setup-wordpress.sh"]

CMD ["php-fpm82", "-F"]
