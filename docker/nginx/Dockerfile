FROM nginx:stable

COPY default.conf /etc/nginx/conf.d/default.conf

HEALTHCHECK --interval=20s --timeout=5s --start-period=10s \
  CMD curl -f http://localhost/ || exit 1
