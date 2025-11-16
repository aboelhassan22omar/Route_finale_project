# نستخدم صورة MySQL الرسمية
FROM mysql:8.0

# ننسخ ملف الاعدادات المخصص لو احتجنا تغييرات (مثلاً max_connections أو charset)
COPY my.cnf /etc/mysql/conf.d/my.cnf

# نترك ENV الافتراضية للإعداد أثناء التنفيذ أو عبر Kubernetes secrets:
# (لا تضبط كلمات السر هنا في ملف ثابت في الريبو — استخدم CI/CD variables أو K8s Secrets)
