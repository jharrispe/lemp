
## include .env variables
include .env
export

ifeq (${ENVIRONMENT}, production)
	env_parms=-f docker-compose.yml -f docker-compose.prod.yml
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
	docker exec -it alpine supervisorctl restart nginx

certbot-renew:
	docker exec alpine /usr/bin/certbot renew
	docker exec alpine nginx -s reload

nginx-reload:
	docker exec alpine nginx -s reload

