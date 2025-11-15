#!/bin/bash
echo "🚀 Deploying WordPress stack to Kubernetes..."

NAMESPACE="routefinale"

# ضبط namespace
kubectl apply -f kubernetes/namespace.yaml

# نشر MySQL
kubectl apply -f kubernetes/mysql-secret.yaml
kubectl apply -f kubernetes/mysql-pv.yaml
kubectl apply -f kubernetes/mysql-pvc.yaml
kubectl apply -f kubernetes/mysql-deployment.yaml
kubectl scale deployment/mysql --replicas=2 -n $NAMESPACE
kubectl apply -f kubernetes/mysql-service.yaml

# نشر phpMyAdmin
kubectl apply -f kubernetes/phpmyadmin-deployment.yaml
kubectl scale deployment/phpmyadmin --replicas=2 -n $NAMESPACE
kubectl apply -f kubernetes/phpmyadmin-service.yaml

# نشر WordPress
kubectl apply -f kubernetes/wordpress-deployment.yaml
kubectl scale deployment/wordpress --replicas=2 -n $NAMESPACE
kubectl apply -f kubernetes/wordpress-service.yaml

# نشر Ingress
kubectl apply -f kubernetes/ingress.yaml

echo "✅ Deployment complete!"
