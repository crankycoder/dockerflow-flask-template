# (Re)build the docker images
build:
	docker-compose build

# Spin up the dockerized flask container
up:
	docker-compose up

# You need to explicitly teardown the container sometimes
down:
	docker-compose down

# Updating pip hashes is awful
freeze:
	touch requirements.txt
	pip freeze |grep -v hashin| sed -e "s/==.*//"|xargs hashin
