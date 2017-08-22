#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Work directory parameter is required"
    exit 0
fi
cd $1
sudo cp /etc/letsencrypt/live/checkiepy.com/fullchain.pem cert/
sudo cp /etc/letsencrypt/live/checkiepy.com/privkey.pem cert/

