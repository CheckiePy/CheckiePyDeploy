#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Work directory parameter is required"
    exit 0
fi
cd $1
git submodule init
git submodule update
if [ -z "$2" ]
then
    echo "Don't forget to create config.py file and migrate database"
    exit 0
else
    cp $2 acsbackend/acs/config.py
fi
source $1/script/copy_cert.sh $1
