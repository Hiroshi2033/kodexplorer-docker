#!/bin/bash
set -e
if [ "$1" = 'apache2-foreground' ] && [ "$(id -u)" = '0' ]; then
    chown -R www-data /var/www/html
    chmod -R 777 /var/www/html/
fi
exec "$@"
