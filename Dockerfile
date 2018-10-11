# extends PHP
FROM php:apache

# add PDO
RUN docker-php-ext-install pdo pdo_mysql

# copy over development configuration
RUN cp $PHP_INI_DIR/php.ini-development $PHP_INI_DIR/php.ini

# log errors to /dev/stderr so errors can be read from docker logs
RUN echo "error_log = /dev/stderr" >> $PHP_INI_DIR/php.ini
