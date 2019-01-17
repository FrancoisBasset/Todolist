from php:7.2-apache

RUN apt-get update && apt-get install -y \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng-dev \
    && docker-php-ext-install -j$(nproc) pdo pdo_mysql

RUN ["/bin/sh", "-c", "chmod 777 /var/www/html"]

WORKDIR /usr/local/etc/php

COPY php.ini .

WORKDIR /var/www/html

COPY index.php .
RUN ["/bin/sh", "-c", "chmod 777 index.php"]

COPY test.php .
RUN ["/bin/sh", "-c", "chmod 777 test.php"]

WORKDIR /