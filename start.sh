#! /bin/sh
# initialize script for my service
# Usage: sh ./init.sh

# define volume and network
# if exists, just skip
docker volume create out
docker volume create out_lang-frontend

docker network inspect mynet &> /dev/null || docker network create mynet

# start lang service
docker-compose -f ../lang/docker-compose.yml up -d --build
# start proxy service
docker-compose -f ../proxy/docker-compose.yml up -d --build
# start p-build service
docker-compose -f ../p-drum/docker-compose.yml up -d --build
# start lang-frontend service
docker-compose -f ../lang-frontend/docker-compose.yml up -d --build

