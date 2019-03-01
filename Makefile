abuild:
	docker-compose run --rm app sh -c \
	  "cd /home/builder/aports/$(PKG) && abuild -r"

build:
	mkdir -p .cache/ .distfiles/ packages/
	docker-compose build

checksum:
	docker-compose run --rm app sh -c \
	  "cd /home/builder/aports/$(PKG) && abuild checksum"

clean:
	rm -rf packages/*

clean-all: clean
	rm -rf .cache/* .distfiles/*

shell:
	docker-compose run --rm app sh

update:
	docker-compose run --rm app sudo apk update
