#!/bin/bash

chmod -R 775 storage

composer install
php artisan key:generate
php artisan migrate
php-fpm