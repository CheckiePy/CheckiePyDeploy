#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Work directory parameter is required"
    exit 0
fi
cd $1
git submodule init
sudo docker-compose build
cd frontend/acs/
npm install
echo "Don't forget to create config.py file"
