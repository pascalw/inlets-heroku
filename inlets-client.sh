#!/usr/bin/env sh
inlets client \
  --remote $(heroku info -s | grep web_url | cut -d= -f2 | sed 's/https:/wss:/' | sed 's/.$//') \
  --token $(heroku config:get TOKEN) \
  --upstream "$@"
