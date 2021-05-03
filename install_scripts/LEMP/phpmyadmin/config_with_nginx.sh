#!/bin/bash

PHPMYADMIN_DIR="/usr/share/phpmyadmin"
if [ ! -d "${PHPMYADMIN_DIR}" ]; then
    echo "Error: dir not existed."
    exit 1
fi

DOMAIN="phpmyadmin"

sudo ln -s "${PHPMYADMIN_DIR}" /var/www/
sudo chown -R $USER:$USER /var/www/${DOMAIN}

sudo cp -r phpmyadmin /etc/nginx/sites-available/${DOMAIN}
sudo ln -s /etc/nginx/sites-available/${DOMAIN} /etc/nginx/sites-enabled/
sudo unlink /etc/nginx/sites-enabled/default

sudo nginx -t
sudo systemctl reload nginx
