#! /bin/sh
# initialize script for my service
# Usage: sh ./init.sh

# define volume and network
# if exists, just skip
docker volume create out

docker network inspect mynet &> /dev/null || docker network create mynet

# start p-build service
docker-compose -f ../p-drum/docker-compose.yml up -d --build
# start proxy service
docker-compose -f ../proxy/docker-compose.yml up -d --build

