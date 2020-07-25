FROM php:7.3.6-fpm-alpine3.9
RUN apk add bash mysql-client
RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www
RUN rm -rf html

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# COPY . .
RUN ln -s public html

# RUN apk add --no-cache openssl bash zip mysql-client libzip-dev
# RUN docker-php-ext-configure zip --with-libzip \
#     && docker-php-ext-install pdo pdo_mysql zip

EXPOSE 9000

ENTRYPOINT [ "php-fpm" ]