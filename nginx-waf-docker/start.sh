#!/bin/bash
set -e
test $PROXY_PASS_URL
test $NGINX_WORKERS
test $USE_SSL

/usr/local/bin/confd -onetime -backend env

echo "Starting Nginx"
exec nginx -g 'daemon off;' 
