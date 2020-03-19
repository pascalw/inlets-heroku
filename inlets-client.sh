#!/usr/bin/env sh
APP_URL=$(heroku info -s | grep web_url | cut -d= -f2)
echo "Connecting to $APP_URL...\n"

inlets client \
  --remote $(echo "$APP_URL" | sed 's/https:/wss:/' | sed 's/.$//') \
  --token $(heroku config:get TOKEN) \
  --upstream "$@"
