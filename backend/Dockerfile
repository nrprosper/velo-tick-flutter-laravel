FROM composer:lts AS deps

WORKDIR /app

RUN --mount=type=bind,source=composer.json,target=composer.json \
    --mount=type=bind,source=composer.lock,target=composer.lock \
    --mount=type=cache,target=/tmp/cache \
    composer install --no-dev --no-interaction --no-scripts --verbose

FROM php:8.2-apache AS final

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Update Apache DocumentRoot to /var/www/html/public
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|' /etc/apache2/sites-available/000-default.conf

# Enable the rewrite module for Laravel routing
RUN a2enmod rewrite

# Install the pdo_mysql extension
RUN docker-php-ext-install pdo_mysql

# Copy dependencies and set ownership to www-data
COPY --from=deps --chown=www-data:www-data app/vendor/ /var/www/html/vendor

# Copy application files and set ownership to www-data
COPY --chown=www-data:www-data ./ /var/www/html

# Copy the entrypoint script
COPY --chown=www-data:www-data entrypoint.sh /usr/local/bin/entrypoint.sh

# Make the script executable (runs as root before USER directive)
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

USER www-data
