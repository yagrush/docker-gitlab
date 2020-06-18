gitlab:
	docker-compose exec gitlab bash
up:
	docker-compose up -d
build:
	docker-compose build --no-cache --force-rm
init:
	@make down
	@make build
	@make up
stop:
	docker-compose stop
down:
	docker-compose down
restart:
	@make down
	@make up
destroy:
	docker-compose down --rmi all --volumes
ps:
	docker-compose ps
logs:
	docker-compose logs
logs-watch:
	docker-compose logs --follow
docker-rmc:
	docker container rm `docker container ls -aq`
docker-rmi:
	docker image rm `docker image ls -aq`
re-gitlab:
	docker container stop gitlab
	docker container rm gitlab
	docker-compose up --force-recreate -d gitlab
ls:
	docker container ls -a
