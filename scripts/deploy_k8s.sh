#!/usr/bin/env bash
set -euo pipefail
NS="route-finale"

echo "[DEPLOY] Ensure namespace"
kubectl apply -f kubernetes/namespace.yaml

echo "[DEPLOY] Create mysql secret (from env variables if exist)"
kubectl -n "$NS" delete secret mysql-secret --ignore-not-found
kubectl -n "$NS" create secret generic mysql-secret \
  --from-literal=mysql-root-password="${MYSQL_ROOT_PASSWORD:-root123}" \
  --from-literal=mysql-user="${MYSQL_USER:-wpuser}" \
  --from-literal=mysql-password="${MYSQL_PASSWORD:-wp12345}" \
  --from-literal=mysql-database="${MYSQL_DATABASE:-wpdb}"

echo "[DEPLOY] Apply MySQL (statefulset + svc)"
kubectl apply -f kubernetes/mysql/statefulset.yaml
kubectl apply -f kubernetes/mysql/service.yaml

echo "[DEPLOY] Apply WordPress"
kubectl apply -f kubernetes/wordpress/pvc.yaml
kubectl apply -f kubernetes/wordpress/deployment.yaml
kubectl apply -f kubernetes/wordpress/service.yaml

echo "[DEPLOY] Apply ingress"
kubectl apply -f kubernetes/ingress.yaml

echo "[DEPLOY] Done."