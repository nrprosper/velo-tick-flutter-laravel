#!/bin/bash

# Run Laravel migrations
php /var/www/html/artisan migrate --force

# Run Laravel database seeding
php /var/www/html/artisan db:seed --force

# Start Apache
exec apache2-foreground
