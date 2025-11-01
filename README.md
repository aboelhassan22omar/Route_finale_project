

# GitLab CI/CD Kubernetes Deployment Project - 

## Project Overview

**GitLab CI/CD pipeline** that deploys a wordpress  application to **AWS EKS (Elastic Kubernetes Service)** using **Terraform** for infrastructure provisioning 

## What's Been Created

### 📋 Complete Documentation Files



**Main Project Documentation** - Comprehensive guide including:
- Project overview and learning objectives
- Complete architecture diagrams (pipeline and AWS infrastructure)
- Step-by-step setup instructions
- Prerequisites and AWS configuration
- Detailed explanation of each pipeline stage
- Kubernetes commands reference
- Troubleshooting guide




**All Code Files** - Production-ready configuration including:
- Complete `.gitlab-ci.yml` with 6 stages (build, infrastructure, configure, deploy, test, cleanup)
- code: https://github.com/hossamalsankary/GitLab-CI-CD-Kubernetes-Deployment-Project-.git


**Configuration & Scripts** - Kubernetes manifests and utilities:
- Kubernetes deployment, service, namespace, ingress
- Horizontal Pod Autoscaler (HPA)
- Ansible playbook for cluster configuration
- Smoke test script with 8 comprehensive tests
- Health check script
- Manual rollback script
- Complete Terraform configurations (VPC, EKS, security groups)
- Terraform variables and outputs

### 🎨 Visual Diagram
**Pipeline Architecture Diagram** - Shows the complete flow from code commit through GitLab CI/CD stages to Kubernetes deployment, including the conditional rollback path.
![Uploading image.png…]()


## Key Features of the Project

### ✅ Core Technologies
1. **GitLab CI/CD** (replaces Jenkins)
2. **AWS EKS** (managed Kubernetes cluster)
3. **Terraform** (Infrastructure as Code)
4. **Ansible** (configuration management)
5. **Docker** (containerization)
6. **Kubernetes** (orchestration)

### ✅ Pipeline Stages

1. **BUILD**: 
   - Build Docker image
   - Run unit tests
   - Push to GitLab Container Registry

2. **INFRASTRUCTURE**:
   - Terraform validate, plan, apply (pro)
   - Create EKS cluster (~15-20 min)
   - Provision VPC, subnets, NAT gateways,RDS,EKS,
   - build server to use it as gitlab agant on the same vpc

3. **CONFIGURE**:
   - Setup kubectl access
   - Run Ansible playbook to configure build server if exists
   - Install metrics server
   - Apply resource quotas

 
4. **SONARQUBE**:
   -  continuous code quality and code security.

5. **TRIVEY**:
   -  utomatically detects and scans vulnerabilities

6. **DEPLOY**:
   - Apply Kubernetes manifests
   - Rolling update (zero downtime)
   - Wait for rollout completion
     
7. **TEST**:
   - Smoke tests (8 comprehensive checks)
   - Integration tests
   - Health checks

8. **CLEANUP**:
   - **Automatic rollback** on test failure
   - Manual infrastructure destroy option

### ✅ Key Capabilities

- ✨ **Zero-downtime deployments** (rolling updates)
- 🔄 **Automatic rollback** if tests fail
- 🛡️ **Security best practices** (non-root containers, secrets management)
- 📊 **Auto-scaling** (HPA configuration included)
- 🔍 **Comprehensive testing** (smoke tests, health checks)
- 📈 **Resource management** (quotas, limits, requests)
- 🌐 **LoadBalancer** provisioning for external access

## Project Challenges & Options

### Challenge Levels

**Option 1: AWS EKS (Recommended for Students)**
- Easier setup
- AWS-managed control plane
- Focus on CI/CD and Kubernetes concepts
- code: https://www.youtube.com/watch?v=nIIxexG7_a8&list=PLiMWaCMwGJXkeBzos8QuUxiYT6j8JYGE5 


**Option 2: Self-Managed Kubernetes (Manual Challenge)**
- Use k3s or minikube
- Multiple vm instances joined as cluster
- Manual cluster management

### Deployment Strategies Included

1. **Rolling Update** (default) - Zero downtime, gradual rollout
2. Ready for **Blue-Green** - Keep two environments



### Best Practices
- Security (non-root containers, secret management)
- Resource optimization (requests/limits, HPA)
- High availability (multiple replicas, health checks)
- Monitoring and logging
- Cost management


## GitLab Repository Structure

All files are ready to be pushed to GitHub with this structure:

```
project-root/
├── .gitlab-ci.yml
├── README.md
├── app/
│   ├── Dockerfile
│   ├── .dockerignore
│   ├── package.json
│   └── src/
│       └── index.js
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── backend.tf
│   ├── eks.tf
│   ├── vpc.tf
│   └── security-groups.tf
├── kubernetes/
│   ├── deployment.yml
│   ├── service.yml
│   ├── namespace.yml
│   ├── ingress.yml
│   └── hpa.yml
├── ansible/
│   ├── playbook.yml
│   └── inventory/
│       └── hosts.yml
└── scripts/
    ├── smoke-test.sh
    ├── health-check.sh
    └── rollback.sh
```
