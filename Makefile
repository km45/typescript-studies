.PHONY: up
up:
	docker-compose up -d --build

.PHONY: down
down:
	docker-compose down

.PHONY: shell
shell:
	docker-compose exec --user `id -u`:`id -g` develop /bin/sh

.PHONY: build
build: clean
	tsc
	mkdir dest/html && cp -p src/html/* dest/html/

.PHONY: clean
clean:
	rm -fr dest/
