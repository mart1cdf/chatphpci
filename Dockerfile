FROM php:8.2-apache

# Installation des extensions PHP
RUN docker-php-ext-install mysqli pdo pdo_mysql && docker-php-ext-enable mysqli

# Copie du code
COPY ./app/ /var/www/html/

# Permissions correctes
RUN chown -R www-data:www-data /var/www/html

EXPOSE 80
