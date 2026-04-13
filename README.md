# InfraHash – AWS Infrastructure Project (Terraform + Kubernetes)

## Overview
InfraHash is an infrastructure-focused project built to demonstrate secure and scalable application deployment on AWS using Terraform and Kubernetes.

The project is centered on Infrastructure as Code, container orchestration, secure networking, and cloud architecture design. It is being developed as a practical platform for testing AWS infrastructure patterns, deployment workflows, and hybrid deployment concepts. Designed and deployed AWS infrastructure using Terraform to support containerized workloads on Kubernetes (EKS), focusing on scalability, security, and modular infrastructure design.

## 🎯 What This Project Demonstrates
- Infrastructure as Code (Terraform) for AWS environments  
- Kubernetes-based application deployment (EKS)  
- Multi-tier cloud architecture design  
- Load balancing and traffic routing with ALB  
- Secure networking (public/private subnets, access control)  
- CI/CD workflow integration and automation concepts  
- Real-world troubleshooting and infrastructure iteration 

## Current State
InfraHash is an active work-in-progress project.

The AWS infrastructure and Kubernetes components are being developed and tested, but some functionality is still being validated. Current areas being worked through include:

- `kubeconfig` must currently be refreshed after redeployment
- the management node workflow in the EKS environment still needs refinement
- RDS connectivity and integration with EKS are still being tested
- local/cloud synchronization is planned but not yet implemented

This project is intended to show both current implementation work and the engineering thought process behind building a resilient cloud environment.

## Architecture
The current architecture is designed around the following AWS components:

- VPC with public and private subnets
- Application Load Balancer for traffic routing
- EKS for container orchestration
- RDS (PostgreSQL) for database integration (currently under validation)
- supporting networking and access controls to enable secure deployment

This modular architecture separates infrastructure, application deployment, and DNS management into distinct layers to mirror real-world cloud environments.

## 🧰 Technologies Used

- **AWS**: VPC, EC2, ALB, EKS, RDS, IAM  
- **Terraform**: Infrastructure as Code (IaC)  
- **Docker**: Containerization  
- **Kubernetes**: Container orchestration  
- **CI/CD**: GitHub Actions (concepts and workflows)  
- **Python / Flask**: Backend application 

## 🔐 Security Approach

Security is integrated throughout the infrastructure design:

- Network segmentation (public vs private subnets)  
- Controlled inbound and outbound traffic using security groups  
- IAM roles with least-privilege principles  
- Isolation between application and database layers  
- Focus on secure configuration and long-term maintainability

## 🚀 Key Features

- Multi-AZ infrastructure design for high availability  
- Containerized workloads deployed via Kubernetes  
- Infrastructure fully managed with Terraform  
- Load-balanced application entry point  
- Modular infrastructure layout (infra / k8s / dns separation)  
- Designed for iterative deployment and testing  

## Key Goals
The long-term goals of InfraHash include:

- reliable AWS deployment through Terraform
- stable Kubernetes application hosting on EKS
- validated RDS integration
- improved management access workflows
- streamlined redeployment process
- future hybrid/local synchronization capability

## ⚙️ Deployment

### Prerequisites
- AWS account with appropriate permissions  
- Terraform installed  
- Docker installed  
- kubectl configured 

## Notes on Development
This repository reflects an iterative engineering process. Some components are functional today, while others are still being tested, debugged, and improved. The goal is not just to deploy infrastructure, but to understand and solve the operational issues that come with building real cloud environments.

### Quick Start

```bash
# Clone the repository
git clone https://github.com/Rtr665052/infrahash.git
cd infrahash

# Deploy infrastructure
cd infra
terraform init
terraform apply

# Configure Kubernetes access
aws eks update-kubeconfig --region <region> --name <cluster-name>

# Deploy Kubernetes workload
cd ../k8s
terraform init
terraform apply

# Deploy DNS
cd ../dns
terraform init
terraform apply

```

## Known Issues / Active Work
- `aws eks update-kubeconfig` currently needs to be rerun after redeployments
- management node behavior in the EKS environment is still being refined
- RDS-to-EKS connectivity and application integration are still under validation

## Author
**Thomas Repa**  
Cloud / Infrastructure Engineer | AWS | Terraform | Kubernetes | TS/SCI (CI Poly)

GitHub: https://github.com/Rtr665052  
LinkedIn: https://www.linkedin.com/in/thomas-repa/
