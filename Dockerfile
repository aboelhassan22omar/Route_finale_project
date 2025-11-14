FROM wordpress:latest

COPY wordpress-mysql/ /var/www/html/

EXPOSE 80

CMD ["apache2-foreground"]