#!/bin/bash
echo "🧪 Testing Kubernetes deployment..."

NAMESPACE="routefinale"

# عرض Pods
kubectl get pods -n $NAMESPACE -o wide

# عرض Services
kubectl get svc -n $NAMESPACE

# اختبار الوصول لكل خدمة
for service in wordpress phpmyadmin; do
    echo "Testing $service..."
    kubectl run --rm -i --tty curl-test-$service --image=curlimages/curl --restart=Never --command -- \
        curl -sSf --max-time 10 http://$service/ || echo "⚠️ $service test failed"
done

echo "✅ Tests completed!"
