FROM debian:jessie-slim

ARG DEBIAN_FRONTEND=noninteractive

#------------------ INSTALL ------------------#

# DEBIAN
RUN adduser www-data www-data
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sudo dialog apt-utils wget apt-utils
COPY ./bash/.bashrc /root/.bashrc

# PHP 7
RUN wget -O- https://www.dotdeb.org/dotdeb.gpg | apt-key add -
RUN echo "deb http://packages.dotdeb.org jessie all" > /etc/apt/sources.list.d/dotdeb.list
RUN apt-get update -y
RUN apt-get install -y php7.0 php7.0-apcu php7.0-cgi php7.0-cli php7.0-curl php7.0-fpm php7.0-gd php7.0-json php7.0-mcrypt php7.0-mysql php7.0-sqlite php7.0-xml php7.0-intl

# APAPCHE 2
RUN apt-get install -y apache2 libapache2-mod-php

#------------------ CONFIGURATION ------------------#

# PHP 7
COPY ./php/php.ini /tmp/
RUN cat /tmp/php.ini >> /etc/php/7.0/cli/php.ini
RUN cat /tmp/php.ini >> /etc/php/7.0/apache2/php.ini
RUN rm -rf /tmp/php.ini

# APAPCHE 2
RUN rm -rf /etc/apache2/sites-available/000-default.conf
RUN rm -rf /etc/apache2/sites-enabled/000-default.conf
COPY ./apache/local.dev.conf /etc/apache2/sites-available/local.dev.conf
RUN a2ensite local.dev.conf

WORKDIR /var/www/html

EXPOSE 80
ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]