#!/bin/bash

COMPOSE="/usr/local/bin/docker-compose --ansi never"
DOCKER="/usr/bin/docker"

cd /crud-users/
$COMPOSE run certbot renew --dry-run && $COMPOSE kill -s SIGHUP nginx
$DOCKER system prune -af
