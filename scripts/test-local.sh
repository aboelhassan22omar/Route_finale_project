#!/bin/bash
echo "🧪 Testing Kubernetes deployment..."

NAMESPACE="routefinale"

# عرض Pods
kubectl get pods -n $NAMESPACE -o wide

# عرض Services
kubectl get svc -n $NAMESPACE

# اختبار الوصول لكل خدمة عبر NodePort
for service in wordpress phpmyadmin; do
    echo "Testing $service via NodePort..."
    if [ "$service" == "wordpress" ]; then
        PORT=30080
    else
        PORT=30081
    fi
    curl -sSf --max-time 10 http://127.0.0.1:$PORT/ || echo "⚠️ $service test failed"
done

echo "✅ Tests completed!"
