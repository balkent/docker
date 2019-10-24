FROM php:7.2-apache

ENV COMPOSER_ALLOW_SUPERUSER=1

EXPOSE 80
WORKDIR /var/www/html

RUN apt-get update -qy && \
    apt-get install -y \
    git \
    libicu-dev \
    unzip \
    zip && \
    curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY apache.conf /etc/apache2/conf-available/apache.conf
COPY vhost.conf /etc/apache2/sites-available/000-default.conf

RUN a2enconf apache.conf
RUN a2enmod rewrite remoteip

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    libicu-dev

RUN docker-php-ext-install -j$(nproc) opcache pdo_mysql

ADD php.ini /usr/local/etc/php/conf.d/app.ini