FROM php:7.1-fpm

COPY ./dockerfiles/sources.list /etc/apt

RUN apt-get remove --purge libgnutls-deb0-28 -y

RUN apt-get update && apt-get install -y \
	wget unzip git curl \
	libmcrypt-dev libpng12-dev libjpeg-dev libpq-dev zlib1g-dev\
	mysql-client \
	apt-transport-https dirmngr software-properties-common

RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get install -y nodejs

RUN docker-php-ext-install zip mysqli 
RUN docker-php-ext-configure gd --with-png-dir=/usr --with-jpeg-dir=/usr
RUN docker-php-ext-install gd mbstring pdo pdo_mysql zip opcache

RUN php -r "copy('https://getcomposer.org/installer','/var/www/html/composer-setup.php');" 
RUN php /var/www/html/composer-setup.php
RUN mv /var/www/html/composer.phar /usr/local/bin/composer

COPY ./bashfiles/php_script.sh /usr/local/bin/php_script.sh

EXPOSE 9000
