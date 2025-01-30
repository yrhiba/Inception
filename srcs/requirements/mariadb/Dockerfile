FROM alpine:3.20

RUN apk update && apk add mariadb mariadb-client bash

RUN mkdir -p /run/mysqld && \
    mkdir -p /var/lib/mysql && \
    mkdir -p /var/log/mysql && \
    chown -R mysql:mysql /run/mysqld && \
    chown -R mysql:mysql /var/lib/mysql && \
    chown -R mysql:mysql /var/log/mysql

COPY conf/mariadb-server.cnf /etc/my.cnf.d/mariadb-server.cnf

COPY tools/entrypoint.sh /usr/local/bin/setup-mariadb.sh

RUN chmod +x /usr/local/bin/setup-mariadb.sh

EXPOSE 3306

ENTRYPOINT ["setup-mariadb.sh"]

CMD ["mysqld", "--user=mysql"]
