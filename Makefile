starter:
	@make setup --no-print-directory
	@make up --no-print-directory

setup:
	@sh setup.sh

build:
	@docker-compose build --no-cache

up:
	@docker-compose up -d
	@echo Please access with a web browser: https://127.0.0.1

exec-php:
	@docker-compose exec php bash

exec-nginx:
	@docker-compose exec nginx bash

exec-db:
	@docker-compose exec db bash

down:
	@docker-compose down

remove:
	@docker-compose down --rmi all --volumes
