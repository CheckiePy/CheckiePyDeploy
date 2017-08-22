#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Work directory parameter is required"
    exit 0
fi
cd $1
git submodule update --remote
source $1/script/build_backend.sh $1
source $1/script/build_frontend.sh $1
sudo docker-compose up -d
