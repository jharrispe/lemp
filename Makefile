
## include .env variables
include .env
export

ifeq (${ENVIRONMENT}, production)
	env_parms=-f docker-compose.yml -f docker-compose.prod.yml
endif

ifeq (${ENVIRONMENT}, local)
	env_parms=-f docker-compose.yml -f docker-compose.override.yml -f docker-compose.local.yml
endif

build:
	docker-compose build

start:
	docker-compose ${env_parms} up -d

stop:
	docker-compose down

sh:
	docker exec -it alpine sh

restart:
	docker-compose down
	sleep 3
	docker-compose ${env_parms} up -d

services-restart:
	docker exec alpine supervisorctl restart all

nginx-reload:
	docker exec alpine nginx -t && docker exec alpine nginx -s reload

certbot-renew:
	docker exec alpine /usr/bin/certbot renew
	docker exec alpine nginx -s reload
