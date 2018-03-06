#!/bin/bash

if [ "$(ls -A /app)" ]; then
     	echo "Folder app has code"
else
	cd /app
	composer clear-cache
	echo "{}" > ~/.composer/composer.json
	composer create-project acquia/lightning-project /app --no-install --no-interaction  -vvv --ignore-platform-reqs --prefer-dist  --no-progress
	composer update -vvv
	cp /app/docroot/sites/default/default.settings.php /app/docroot/sites/default/settings.php
	mkdir -p /app/dockroot/sites/default/files/translations
	chmod 777 -R /app
fi

echo "Running Php FPM Server" 
php-fpm
