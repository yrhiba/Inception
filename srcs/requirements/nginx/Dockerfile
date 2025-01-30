FROM alpine:3.20

RUN apk update && apk add openssl nginx bash

RUN mkdir -p /etc/nginx/ssl && \
    openssl req -x509 -nodes -days 1000 -newkey rsa:4096 \
    -keyout /etc/nginx/ssl/nginx.key \
    -out /etc/nginx/ssl/nginx.crt \
    -subj "/CN=yrhiba.42.fr"

COPY conf/nginx.conf /etc/nginx/nginx.conf

EXPOSE 443

CMD ["nginx", "-g", "daemon off;"]
