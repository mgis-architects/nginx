#!/bin/bash
set -e
test $PROXY_PASS_URL
test $NGINX_WORKERS
test $USE_SSL

/usr/local/bin/confd -onetime -backend env

if [ $USE_SSL == "NO" ]; then
   rm -rf /usr/local/nginx/conf/nginx.ssl.conf
fi

echo "Starting Nginx"
exec nginx -g 'daemon off;' 
