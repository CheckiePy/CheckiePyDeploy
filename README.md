# Getting started

### 1. Deploy on a remote server (without HTTPS)

#### 1.1. Prerequisites

* Git
* Docker

#### 1.2. Deploy steps

##### 1.2.1. Login to the remote server with SSH

##### 1.2.2 Clone the repository
```
git clone https://github.com/CheckiePy/CheckiePyDeploy.git
cd CheckiePyDeploy
git submodule init
git submodule update
```

##### 1.2.3. Build the frontend

```
sudo docker-compose -f node-service.yml build
sudo docker-compose -f node-service.yml run node
```

##### 1.2.4 Edit hosts

Details can be found in the backend documentation [here](https://github.com/CheckiePy/CheckiePyBackend#22-edit-hosts).

##### 1.2.5. Provide credentials

Details can be found in the backend documentation [here](https://github.com/CheckiePy/CheckiePyBackend#24-provide-credentials).

##### 1.2.6. Edit NGINX config

Change `server_name` in [NGINX config](/nginx/http/checkiepy.conf).

##### 1.2.7. Run the system

```
sudo docker-compose -f http-compose.yml build
sudo docker-compose -f http-compose.yml up -d
```

##### 1.2.8. Migrate the database

```
sudo docker-compose -f http-compose.yml exec django python manage.py migrate
```

##### 1.2.9. Collect Django static

```
sudo docker-compose -f http-compose.yml exec django python manage.py collectstatic --noinput
```

##### 1.2.10. Create a super user

```
sudo docker-compose -f http-compose.yml exec django python manage.py createsuperuser
```

##### 1.2.11. Open the application in a browser

### 2. Deploy on a remote server (with HTTPS)

To deploy the system with HTTPS, prerequisites and steps are exactly the same except for docker compose file. In this case you should use `https-compose.yml` instead of `http-compose.yml`. Additionally you need certificates and to change domain information (see `nginx/https/checkiepy.conf`). 

# License

[MIT](/LICENSE)
