#!/bin/sh

cd /app
composer create-project acquia/lightning-project /app
cp /app/docroot/sites/default/default.settings.php /app/docroot/sites/default/settings.php
mkdir -p /app/dockroot/sites/default/files/translations
chmod 777 -R /app

php-fpm
