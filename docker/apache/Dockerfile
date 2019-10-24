FROM httpd:2.4.33-alpine

RUN apk update; \
    apk upgrade;

COPY httpd.conf /usr/local/apache2/conf/httpd.conf
COPY local.dev.conf /usr/local/apache2/conf/extra/httpd-vhosts.conf