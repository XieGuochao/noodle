#!/bin/bash

# Install Nginx
apt update
apt install nginx -y

# Copy config
serverName=$1
if [ ! -n "$1" ] ; then
    serverName="_"
    mv /etc/nginx/sites-enabled/default /etc/nginx/default && echo "Warning: moving /etc/nginx/sites-enabled/default to /etc/nginx/default because it will cause a conflict."
fi

echo ""

cat template.conf | sed 's/serverName/'${serverName}'/g' > /etc/nginx/conf.d/noodle.conf && echo "- copy configuration done."

# Reload Nginx
service nginx reload && echo "- Reload Nginx done."

echo ""
echo "If you like it, please star my repo: https://github.com/XieGuochao/noodle/"