FROM composer:2.7.7
COPY ./src/ .
RUN a2enmod rewrite
COPY ./config/apache/000-default.conf /etc/apache2/sites-available/000-default.conf
EXPOSE 80
CMD ["apache2-foreground"]
