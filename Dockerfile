FROM php:8.3.8-apache
COPY ./src/ .
RUN a2enmod rewrite
COPY ./config/apache/000-default.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD ["apache2-foreground"]
