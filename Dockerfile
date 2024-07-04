# Stage 1: Build
FROM composer:2.7.7 AS build
COPY ./src/ /app
WORKDIR /app
RUN composer install

# Deploy-ready image
FROM php:8.3.8-apache
COPY --from=build /app/ /var/www/html
RUN a2enmod rewrite
COPY ./config/apache/000-default.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD ["apache2-foreground"]
