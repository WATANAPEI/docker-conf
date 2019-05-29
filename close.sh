#! /bin/sh
# initialize script for my service
# Usage: sh ./init.sh

# start p-build service
docker-compose -f ../p-drum/docker-compose.yml down

# start proxy service
docker-compose -f ../proxy/docker-compose.yml down

# define volume and network
# if exists, just skip
docker volume rm out

docker network rm mynet


