.PHONY: build shell presto-cli up fixtures tests flake8 docs ci

help:
	@echo "Welcome to <FILL_IN_THE_BLANK>\n"
	@echo "The list of commands for local development:\n"
	@echo "  build          Builds the docker images for the docker-compose setup"
	@echo "  shell          Opens a Bash shell"
	@echo "  up         	Runs the whole stack, served under http://localhost:8000/"
	@echo "  tests      	Run pytest tests using tox"
	@echo "  flake8     	Run flake8 using tox"
	@echo "  docs       	Build the docs using tox"
	@echo "  ci         	Run tests, flake8 and docs"
	@echo "  freeze     	Update the python dependencies in requirements.txt"


build:
	docker-compose build

shell:
	docker-compose run web bash

up:
	docker-compose up

down:
	docker-compose down

tests:
	docker-compose run web tox -etests

flake8:
	docker-compose run web tox -eflake8

docs:
	docker-compose run web tox -edocs

ci:
	docker-compose run web tox

# Updating pip hashes is awful
freeze:
	touch requirements.txt
	pip freeze |grep -v hashin| sed -e "s/==.*//"|xargs hashin
