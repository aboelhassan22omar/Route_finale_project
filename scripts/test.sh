#!/bin/bash
echo "🧪 Testing WordPress deployment..."
kubectl get pods -n wordpress
kubectl get services -n wordpress
echo "✅ Tests completed!"