#!/bin/bash

# Run Laravel migrations
php /var/www/html/artisan migrate --force

# Start Apache
exec apache2-foreground
