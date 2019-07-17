#! /bin/sh
# initialize script for my service
# Usage: sh ./init.sh

# close lang-frontend service
docker-compose -f ../lang-frontend/docker-compose.yml down
# close p-build service
docker-compose -f ../p-drum/docker-compose.yml down

# close proxy service
docker-compose -f ../proxy/docker-compose.yml down
# close lang service
docker-compose -f ../lang/docker-compose.yml down

# define volume and network
# if exists, just skip
docker volume rm out
docker volume rm out_lang-frontend

docker network rm mynet


