#!/bin/bash
cp /opt/etc/nginx.conf /etc/nginx/nginx.conf

sed -i "s/%proxy_pass%/$PROXY_PASS/" /etc/nginx/nginx.conf

echo "$AUTH_USERS" > /etc/nginx/passwords

until ping -c 1 $PROXY_PASS
do
  echo "trying to connect with upstream"
  sleep 1
done

nginx -g 'daemon off;'
