# extends PHP
FROM php:apache

# add PDO
RUN docker-php-ext-install pdo pdo_mysql
