# بناء على الصورة الرسمية لوردبريس (PHP 8.1 + Apache)
FROM wordpress:php8.1-apache

# تثبيت أدوات خفيفة و WP-CLI (مفيد لإعداد الموقع أو إجراء أوتوميشن)
RUN apt-get update \
  && apt-get install -y --no-install-recommends less curl unzip mariadb-client \
  && rm -rf /var/lib/apt/lists/* \
  && curl -sSL https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar -o /usr/local/bin/wp \
  && chmod +x /usr/local/bin/wp

# Healthcheck بسيط للتأكد من أن الـ container يرد
HEALTHCHECK --interval=30s --timeout=5s --start-period=30s \
  CMD curl -f http://localhost/ || exit 1

# نترك ENTRYPOINT ו CMD الافتراضيين (docker image الرسمي يوجد به docker-entrypoint.sh و apache2-foreground)
