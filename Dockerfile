from php:7.2-apache

RUN ["/bin/sh", "-c", "chmod 777 /var/www/html"]

RUN ["/bin/sh", "-c", "mkdir -p /etc/php"]

WORKDIR /usr/local/etc/php

COPY php.ini .

WORKDIR /var/www/html

COPY index.php .
RUN ["/bin/sh", "-c", "chmod 777 index.php"]

COPY test.php .
RUN ["/bin/sh", "-c", "chmod 777 test.php"]

WORKDIR /