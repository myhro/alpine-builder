abuild:
	 docker-compose run --rm app su builder -c "cd /home/builder/aports/$(PKG) && abuild -f -r"

build:
	docker-compose build

checksum:
	 docker-compose run --rm app su builder -c "cd /home/builder/aports/$(PKG) && abuild checksum"

clean:
	rm -rf .abuild/ .cache/ packages/

keygen:
	docker-compose run --rm app su builder -c "abuild-keygen -a -n"

shell:
	docker-compose run --rm app sh

update:
	docker-compose run --rm app apk update
