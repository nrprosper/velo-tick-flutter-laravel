FROM composer:lts AS deps

WORKDIR /app

RUN --mount=type=bind,source=composer.json,target=composer.json \
    --mount=type=bind,source=composer.lock,target=composer.lock \
    --mount=type=cache,target=/tmp/cache \
    composer install --no-dev --no-interaction --no-scripts --verbose

FROM php:8.2-apache AS final

RUN mv "$PHP_INI_DIR/php.ini-production" "$PHP_INI_DIR/php.ini"

COPY --from=deps app/vendor/ /var/www/html/vendor

COPY ./ /var/www/html

USER www-data
