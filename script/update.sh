#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Work directory parameter is required"
    exit 0
fi
cd $1
git submodule update --remote
cd frontend/acs/
ng build -prod -op=../../acsbackend/acs/static/
cd ../../
source $1/script/restart.sh $1
