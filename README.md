# InfraHash – AWS Infrastructure Project (Terraform + Kubernetes)

## Overview
InfraHash is an infrastructure-focused project built to demonstrate secure and scalable application deployment on AWS using Terraform and Kubernetes.

The project is centered on Infrastructure as Code, container orchestration, secure networking, and cloud architecture design. It is being developed as a practical platform for testing AWS infrastructure patterns, deployment workflows, and hybrid deployment concepts.

## What This Project Demonstrates
- AWS infrastructure provisioning with Terraform
- Kubernetes-based application deployment
- Multi-tier cloud architecture design
- Load balancing and network segmentation
- CI/CD and deployment workflow experimentation
- Secure infrastructure practices in a cloud environment

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
- RDS PostgreSQL for database testing and integration
- supporting networking and access controls for secure deployment

## Technologies Used
- AWS
- Terraform
- Kubernetes
- Docker
- Python / Flask
- GitHub Actions

## Security Focus
Security considerations built into the project include:

- network segmentation between public and private components
- controlled access patterns
- infrastructure automation through Terraform
- emphasis on secure configuration and long-term maintainability

## Key Goals
The long-term goals of InfraHash include:

- reliable AWS deployment through Terraform
- stable Kubernetes application hosting on EKS
- validated RDS integration
- improved management access workflows
- streamlined redeployment process
- future hybrid/local synchronization capability

## Notes on Development
This repository reflects an iterative engineering process. Some components are functional today, while others are still being tested, debugged, and improved. The goal is not just to deploy infrastructure, but to understand and solve the operational issues that come with building real cloud environments.

## Author
**Thomas Repa**  
Cloud / Infrastructure Engineer | AWS | Terraform | Kubernetes | TS/SCI (CI Poly)

GitHub: https://github.com/Rtr665052  
LinkedIn: https://www.linkedin.com/in/thomas-repa/
