VOLUME_PATH = ~/data
WORDPRESS_VOLUME = $(VOLUME_PATH)/wordpress
MARIADB_VOLUME = $(VOLUME_PATH)/mariadb

all:
	mkdir -p $(WORDPRESS_VOLUME)
	mkdir -p $(MARIADB_VOLUME)
	cd srcs && docker compose up -d

stop:
	cd srcs && docker compose down

clean: stop
	if [ "$$(docker volume ls -q)" ]; then \
		docker volume rm $$(docker volume ls -q); \
	fi
	docker system prune -af
	sudo rm -rf $(VOLUME_PATH)

restart: stop up

re: clean all
