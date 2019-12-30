#! /bin/sh

rm -rf ../vendor

ENV_FILE=.env
if [ ! -e $ENV_FILE ];then
  cp .env.example $ENV_FILE
fi

docker-compose build --no-cache

TEMP_DIR=temp-project
docker-compose run php composer create-project laravel/laravel="${LARAVEL_VERSION}" ${TEMP_DIR} --prefer-dist
shopt -s dotglob
mv -f ../${TEMP_DIR}/* ../
rm -rf ../${TEMP_DIR}
