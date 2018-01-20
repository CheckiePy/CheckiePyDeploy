# Getting started

##### 1. Clone the repository
```
git clone https://github.com/CheckiePy/CheckiePyDeploy.git
cd CheckiePyDeploy
git submodule init
git submodule update
```

##### 2. Build the frontend

```
sudo docker-compose -f node-service.yml build
sudo docker-compose -f node-service.yml run node
```

##### 3. Run the system

```
sudo docker-compose build
sudo docker-compose up -d
sudo docker-compose exec django python manage.py migrate
```

# License

[MIT](/LICENSE)
