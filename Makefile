setup:
	@make build
	@make up

build:
	docker-compose build --no-cache --force-rm

shell:
	docker exec -it app ash

stop:
	docker-compose stop

up:
	docker-compose up -d

down:
	docker-compose down

purge:
	docker system prune -a --volumes

composer-update:
	docker exec app ash -c "composer update"

data-seed:
	docker exec app ash -c "php artisan migrate"
	docker exec app ash -c "php artisan db:seed"

data:
	docker exec app ash -c "php artisan migrate"
