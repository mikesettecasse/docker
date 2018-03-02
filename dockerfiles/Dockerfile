FROM php:7-fpm

COPY ./dockerfiles/sources.list /etc/apt

RUN apt-get update && apt-get install -y \
	wget unzip git curl \
	libmcrypt-dev libpng12-dev libjpeg-dev libpq-dev zlib1g-dev\
	mysql-client \
	apt-transport-https dirmngr 

RUN docker-php-ext-install zip mysqli pdo pdo_mysql 
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr
RUN docker-php-ext-install gd mbstring pdo pdo_mysql zip opcache

RUN php -r "copy('https://getcomposer.org/installer','composer-setup.php');" 
RUN php composer-setup.php
RUN mv /var/www/html/composer.phar /usr/local/bin/composer


COPY ./bashfiles/php_script.sh /usr/local/bin/php_script.sh


