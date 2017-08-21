#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Work directory parameter is required"
    exit 0
fi
cd $1
git submodule init
git submodule update
sudo docker-compose build
cd frontend/acs/
npm install
cd ../../
if [ -z "$2" ]
then
    echo "Don't forget to create config.py file and migrate database"
    exit 0
else
    cp $2 acsbackend/acs/config.py
    sudo docker-compose run django python manage.py migrate
fi
