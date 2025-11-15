FROM wordpress:php8.1-apache

# تثبيت امتداد mysqli المطلوب للاتصال بـMySQL
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

# تمكين Apache mod_rewrite للـ WordPress Permalinks
RUN a2enmod rewrite

# ضبط الصلاحيات
RUN chown -R www-data:www-data /var/www/html

# فتح بورت 80
EXPOSE 80

# بدء Apache
CMD ["apache2-foreground"]
