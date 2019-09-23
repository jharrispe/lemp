
## include .env variables
include .env
export

restart:
	docker exec -it alpine supervisorctl restart nginx

prod:
	docker-compose -f docker-compose.yml -f docker-compose.prod.yml up -d
