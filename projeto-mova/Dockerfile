# Basics

FROM php:7.4

# PHP configurations
ENV DEV 1
ENV COMPOSER_ALLOW_SUPERUSER 1

RUN curl -s https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin/ --filename=composer
RUN apt update -y && apt install -y apt-transport-https libpng-dev libxslt-dev libssh-dev git curl
RUN docker-php-ext-install gd bcmath zip xsl opcache soap sockets calendar mbstring