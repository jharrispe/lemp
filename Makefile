
## include .env variables
include .env
export

build:
	docker-compose build

up:
	docker-compose up -d

down:
	docker-compose down

restart:
	docker exec -it alpine supervisorctl restart nginx

prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d

certbot-renew:
	docker exec -it alpine /usr/bin/certbot renew
	docker exec -it alpine nginx -s reload


