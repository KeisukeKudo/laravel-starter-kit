#! /bin/sh

rm -rf ../vendor

ENV_FILE=.env
if [ ! -e $ENV_FILE ];then
  cp .env.example $ENV_FILE
fi

docker-compose build --no-cache
docker-compose run --rm php sh docker/php/laravel-installer.sh
