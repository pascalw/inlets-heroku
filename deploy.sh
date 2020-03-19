#!/usr/bin/env sh
heroku apps:create --region eu "$@"

TOKEN=$(head -c 16 /dev/urandom | shasum | cut -f1 -d" ")
heroku config:set TOKEN=${TOKEN}

git push heroku master
