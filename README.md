

# GitLab CI/CD Kubernetes Deployment Project - 

## Project Overview

**GitLab CI/CD pipeline** that deploys a wordpress  application to **AWS EKS (Elastic Kubernetes Service)** using **Terraform** for infrastructure provisioning 

## What's Been Created

###  Complete Documentation Files



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

### ðŸŽ¨ Visual Diagram
**Pipeline Architecture Diagram** - Shows the complete flow from code commit through GitLab CI/CD stages to Kubernetes deployment, including the conditional rollback path.
<img width="1149" height="820" alt="image" src="https://github.com/user-attachments/assets/903587b7-ed0e-4e89-9be3-169a7fab7ae9" />



## Key Features of the Project

### âœ… Core Technologies
1. **GitLab CI/CD** (replaces Jenkins)
2. **AWS EKS** (managed Kubernetes cluster)
3. **Terraform** (Infrastructure as Code)
4. **Ansible** (configuration management)
5. **Docker** (containerization)
6. **Kubernetes** (orchestration)

### âœ… Pipeline Stages

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
   - Â continuous code quality and code security.

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

### âœ… Key Capabilities

- âœ¨ **Zero-downtime deployments** (rolling updates)
- ðŸ”„ **Automatic rollback** if tests fail
- ðŸ›¡ï¸ **Security best practices** (non-root containers, secrets management)
- ðŸ“Š **Auto-scaling** (HPA configuration included)
- ðŸ” **Comprehensive testing** (smoke tests, health checks)
- ðŸ“ˆ **Resource management** (quotas, limits, requests)
- ðŸŒ **LoadBalancer** provisioning for external access

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

