# Route_finale_project (local k8s deploy)

تشغيل محلي:
1. تأكد من Docker, kubectl و k3s/minikube مثبتين.
2. بنية المشروع جاهزة داخل `kubernetes/` و `docker/`.
3. Build & push images:
   - export DOCKERHUB_PASS='...'
   - bash ./scripts/build_and_tag.sh
   - bash ./scripts/push_images.sh
4. Deploy:
   - export MYSQL_ROOT_PASSWORD='root123'
   - bash ./scripts/deploy_k8s.sh
5. Cleanup:
   - bash ./scripts/cleanup.sh

ملفات مهمة:
- `.gitlab-ci.yml` بايبلاين CI/CD
- `ansible/` تهيئة الخادم و نشر تلقائي (انسيبل)
