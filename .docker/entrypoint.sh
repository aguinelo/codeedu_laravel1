#!/bin/bash

chmod -R 755 /var/www/storage

composer install
php artisan key:generate
php artisan migrate
php-fpm