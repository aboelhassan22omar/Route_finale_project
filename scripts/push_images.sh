#!/usr/bin/env bash
set -euo pipefail
: "${DOCKERHUB_USER:=omar22aboelhassan}"
: "${DOCKERHUB_PASS:?Needs DOCKERHUB_PASS env var}"

echo "$DOCKERHUB_PASS" | docker login -u "$DOCKERHUB_USER" --password-stdin
docker push omar22aboelhassan/route_finale_wordpress:latest
docker push omar22aboelhassan/route_finale_mysql:8.0
docker push omar22aboelhassan/route_finale_nginx:latest
echo "[PUSH] Done."
