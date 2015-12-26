#!/bin/bash
cp /opt/etc/nginx.conf /etc/nginx/nginx.conf

sed -i "s/%proxy_pass%/$PROXY_PASS/" /etc/nginx/nginx.conf

echo "$AUTH_USERS" > /etc/nginx/passwords

nginx -g 'daemon off;'
