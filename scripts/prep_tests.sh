#!bin/bash

cp pieces/postgres_etl/data/persons.csv scripts/data
docker compose -f scripts/docker-compose.yml up -d
docker ps
docker compose -f scripts/docker-compose.yml logs database | tail
