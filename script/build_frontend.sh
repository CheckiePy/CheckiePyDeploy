
#!/usr/bin/env bash
if [ -z "$1" ]
then
    echo "Work directory parameter is required"
    exit 0
fi
cd $1
cd frontend/acs/
npm install
ng build -prod -op=../../acsbackend/acs/static/
cd ../../
