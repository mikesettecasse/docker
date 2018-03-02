FROM php:7-fpm

COPY ./dockerfiles/sources.list /etc/apt

RUN apt-get update && apt-get install -y wget libmcrypt-dev unzip git curl apt-transport-https dirmngr

RUN php -r "copy('https://getcomposer.org/installer','composer-setup.php');" 
RUN php composer-setup.php
RUN mv /var/www/html/composer.phar /usr/local/bin/composer

COPY ./bashfiles/php_script.sh /usr/local/bin/php_script.sh


