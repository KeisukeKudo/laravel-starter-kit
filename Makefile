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

down:
	@docker-compose down

remove:
	@docker-compose down --rmi all --volumes
