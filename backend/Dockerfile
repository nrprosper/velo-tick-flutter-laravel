FROM php:8.2-cli AS deps

WORKDIR /app

# Install required system packages including git, unzip, and zip
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    git \
    unzip \
    zip \
    && rm -rf /var/lib/apt/lists/*

# Configure and install the gd extension
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd

# Copy Composer from the composer:lts image
COPY --from=composer:lts /usr/bin/composer /usr/bin/composer

# Run composer install with verbose output for debugging
RUN --mount=type=bind,source=composer.json,target=composer.json \
    --mount=type=bind,source=composer.lock,target=composer.lock \
    --mount=type=cache,target=/tmp/cache \
    composer install --no-dev --no-interaction --no-scripts -vvv

FROM php:8.2-apache AS final

# Install required system packages including git, unzip, and zip
RUN apt-get update && apt-get install -y \
    libfreetype6-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    libonig-dev \
    git \
    unzip \
    zip \
    && rm -rf /var/lib/apt/lists/*

# Configure and install PHP extensions: gd, pdo_mysql, mbstring, and zip
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd pdo_mysql mbstring zip

# Use the production php.ini
RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

# Set Apache DocumentRoot to /var/www/html/public
RUN sed -i 's|DocumentRoot /var/www/html|DocumentRoot /var/www/html/public|' /etc/apache2/sites-available/000-default.conf

# Enable the rewrite module for Laravel routing
RUN a2enmod rewrite

# Copy dependencies from the deps stage and set ownership to www-data
COPY --from=deps --chown=www-data:www-data /app/vendor/ /var/www/html/vendor

# Copy application files and set ownership to www-data
COPY --chown=www-data:www-data ./ /var/www/html

# Copy the entrypoint script and make it executable
COPY --chown=www-data:www-data entrypoint.sh /usr/local/bin/entrypoint.sh
RUN chmod +x /usr/local/bin/entrypoint.sh

# Set the entrypoint to the script
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]

# Run as www-data user
USER www-data
