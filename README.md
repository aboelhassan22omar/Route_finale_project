### 🌐 **Route Finale Project**

**Enterprise-Grade Automated Deployment of WordPress using Docker, Kubernetes, Ansible & GitLab CI/CD**

<p align="center">
<img src="images/Screenshot 2025-11-17 021801.png" alt="WordPress Output" width="650"/>
</p>

<p align="center">
  <em>The WordPress installation page successfully deployed through the full CI/CD pipeline and Kubernetes infrastructure.</em>
</p>

---

## ⚡ Overview

This project delivers a complete, automated, production-ready DevOps pipeline for deploying WordPress + MySQL using:

- **Docker** (custom images)
- **Kubernetes** (StatefulSet, Deployments, PVC, Ingress)
- **Ansible** (server provisioning & deployment automation)
- **GitLab CI/CD** (build → configure → deploy → test → cleanup)
- **Bash Automation Scripts**

It demonstrates a real-world DevOps workflow with clean infrastructure design, full automation, and seamless delivery to a Kubernetes environment.

---

## 🏗️ Architecture Summary

This project provides:

### ✅ Custom Docker Images
- WordPress
- MySQL  
- Nginx Reverse Proxy

### ✅ GitLab CI/CD Pipeline
- Build
- Provision infrastructure
- Configuration
- Deployment
- Testing
- Cleanup

<p align="center">
<img src="images/Screenshot 2025-11-20 185810.png" alt="Pipeline Output" width="800"/>
</p>

### ✅ Kubernetes Deployment
- Stateful MySQL backend
- Persistent storage using PVC
- WordPress frontend with ConfigMaps
- Secure Secrets management
- Ingress routing
- Namespace isolation

### ✅ Local Development Support
- Docker Compose setup included

---

## 🎯 Key Highlights

- ✅ Production-level folder structure following DevOps best practices
- ✅ Infrastructure as Code through Ansible & Kubernetes manifests
- ✅ Zero manual steps after pushing code — full CI/CD automation
- ✅ Scalable & modular design for real enterprise usage
- ✅ Reusable Bash scripts for build, push, deploy, cleanup
- ✅ Real physical deployment on Kubernetes cluster
- ✅ Clean, readable YAML & Dockerfiles
- ✅ Strong demonstration of multi-tool DevOps experience

---

## 📂 Project Structure

```
Route_finale_project/
├── ansible/ # Full provisioning & deployment automation
│ ├── ansible.cfg
│ ├── inventory.ini
│ └── playbooks/
│ ├── deploy-app.yml
│ └── provision-build-server.yml
│
├── docker/ # Custom Docker images
│ ├── mysql/
│ ├── nginx/
│ └── wordpress/
│
├── kubernetes/ # K8s deployment manifests (WordPress + MySQL)
│ ├── namespace.yaml
│ ├── ingress.yaml
│ ├── wordpress/
│ └── mysql/
│
├── scripts/ # Automated Bash scripts
│ ├── build_and_tag.sh
│ ├── push_images.sh
│ ├── deploy_k8s.sh
│ └── cleanup.sh
│
└── wordpress-mysql/ # Local Docker Compose setup
```

---

## 🚀 Purpose of the Project

This project is built to represent a full DevOps lifecycle, including:

- **Containerization**
- **Orchestration** 
- **Configuration management**
- **CI/CD pipelines**
- **Provisioning automation**
- **Secrets & configuration handling**
- **Production deployment process**

It's a complete example of how to deploy a real-world application using modern DevOps technologies.

---

## 🔥 Why This Project Stands Out

- ✨ **Enterprise-grade structure**
- ✨ **Modern tooling & automation** 
- ✨ **Professional workflow from start to finish**
- ✨ **Demonstrates real production deployment skills**
- ✨ **Everything is clean, modular, reusable, scalable**
- ✨ **Perfect for real environments or portfolio showcasing**

---

## 📌 Conclusion

This repository showcases a high-quality, fully automated WordPress deployment pipeline powered by **Docker, Kubernetes, GitLab CI/CD, Ansible, and Bash**.

It reflects strong DevOps engineering practices, advanced automation skills, and the ability to design and deliver production-grade systems.