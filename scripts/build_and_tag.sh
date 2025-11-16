#!/usr/bin/env bash
set -euo pipefail
echo "[BUILD] Building Docker images..."

WP_IMAGE="omar22aboelhassan/route_finale_wordpress:latest"
MYSQL_IMAGE="omar22aboelhassan/route_finale_mysql:8.0"
NGINX_IMAGE="omar22aboelhassan/route_finale_nginx:latest"

docker build -t "$WP_IMAGE" docker/wordpress
docker build -t "$MYSQL_IMAGE" docker/mysql
docker build -t "$NGINX_IMAGE" docker/nginx

echo "[BUILD] Done."
