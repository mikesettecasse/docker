#!/bin/sh
rm -Rf app db_data
mkdir app
mkdir db_data
chmod a+wr app db_data
docker-compose up --build
