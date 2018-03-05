#!/bin/sh
rm -Rf app db_data
docker-compose up --build
