FROM php:7-fpm

RUN apt-get update && apt-get install -y libmcrypt-dev unzip git
RUN docker-php-ext-install mbstring pdo_mysql tokenizer mcrypt

CMD ["php-fpm"]
