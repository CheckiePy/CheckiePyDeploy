#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Work directory parameter is required"
    exit 0
fi
cd $1
sudo docker-compose build
sudo docker-compose up -d
sudo docker-compose run django python manage.py migrate
