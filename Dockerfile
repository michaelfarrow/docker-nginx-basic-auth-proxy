FROM nginx:latest

MAINTAINER Mike Farrow <contact@mikefarrow.co.uk>

# Apply Nginx configuration
ADD config/nginx.conf /opt/etc/nginx.conf

# Nginx startup script
ADD config/start.sh /opt/bin/nginx-start.sh
RUN chmod u=rwx /opt/bin/nginx-start.sh

ENTRYPOINT ["/opt/bin/nginx-start.sh"]

