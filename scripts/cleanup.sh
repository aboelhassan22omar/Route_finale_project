#!/usr/bin/env bash
set -euo pipefail
echo "[CLEANUP] Deleting namespace route-finale (this removes all resources)"
kubectl delete namespace route-finale --ignore-not-found
echo "[CLEANUP] Done."
