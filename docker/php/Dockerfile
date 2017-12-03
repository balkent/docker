FROM php:5.6.30-apache

RUN apt-get update && apt-get install -y
RUN docker-php-ext-install -j$(nproc) mysql pdo pdo_mysql