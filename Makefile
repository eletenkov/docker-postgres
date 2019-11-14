all: build

run: build
	@docker-compose up -d

shell:
	@docker exec -ti postgres bash

build:
	@docker-compose build

stop:
	@docker-compose down 

prune:
	@docker-compose down --rmi all