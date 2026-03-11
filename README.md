
# InfraHash

InfraHash is a **distributed password hashing and recovery platform** designed for cybersecurity research, ethical penetration testing, and credential recovery operations.

The system supports **cloud-native deployments on AWS** as well as **lightweight local deployments** for remote or disconnected environments.

InfraHash enables teams to:

- Store and manage password hashes
- Perform controlled brute-force password recovery
- Synchronize password data between multiple deployments
- Scale compute workloads dynamically in the cloud

---

# Key Features

## Password Hash Management
- SHA-256 hashing
- CRUD API for password records
- Database-backed storage

## Password Recovery
- Brute-force cracking engine
- Supports passwords up to 5 characters
- Designed for controlled cybersecurity research

## Distributed Synchronization
- Sync passwords between instances
- Trigger synchronization via API
- Enables hybrid deployments (cloud + remote)

## Scalable Cloud Infrastructure
- Kubernetes-based deployment
- Horizontal pod autoscaling
- Cluster autoscaling

## Infrastructure as Code
- Terraform manages full AWS environment
- Repeatable infrastructure deployments

---

# System Architecture

InfraHash is designed as a **cloud-native distributed system**.

Core architecture components include:

## AWS Cloud Environment

### Networking

- VPC with public and private subnets
- Internet Gateway
- NAT Gateway
- Security Groups
- Route Tables

### Compute

- Amazon EKS cluster
- Worker nodes in Auto Scaling Groups
- Containerized InfraHash services

### Load Balancing

- AWS Application Load Balancer
- Routes traffic to Kubernetes services

### Database

- Amazon RDS (PostgreSQL or MySQL)
- Centralized storage for password hashes

### Secrets Management

- AWS Secrets Manager
- Automatic credential rotation

### Scaling

- Kubernetes Horizontal Pod Autoscaler
- EKS Cluster Autoscaler

### Monitoring

- CloudWatch metrics and logs
- Prometheus
- Grafana dashboards

### Management Node

EC2 instance running:

- kubectl
- Ansible
- k9s
- Prometheus
- Grafana

---

# Local Deployment

InfraHash also supports **lightweight deployments** for remote environments.

Supported runtimes:

- Docker
- Podman
- K3s
- Minikube

Local deployments can:

- run the full application stack
- connect to a cloud database
- synchronize with cloud instances

---

# Application Overview

The InfraHash application is built using:

- Python 3.9+
- Flask
- SQLAlchemy
- SQLite or PostgreSQL
- REST API

Application capabilities include:

- password hashing
- password recovery
- database management
- distributed synchronization

---

# Running the Application

## Requirements

- Python 3.9+
- Flask
- SQLAlchemy
- Requests
- uv package manager

## Install Dependencies

```bash
pip install uv
uv sync
```

## Run the application

```bash
uv run python infrahash.py
```

Default configuration:

- Host: 0.0.0.0
- Port: 5000
- Database: data.db

## Custom configuration

```bash
uv run python infrahash.py --db custom.db --port 8080 --host 127.0.0.1
```

---

# API Endpoints

InfraHash exposes a REST API for managing password records.

## Add Password

```
POST /api/passwords
```

Example:

```bash
curl -X POST -H "Content-Type: application/json" -d '{"password": "example"}' http://localhost:5000/api/passwords
```

## Retrieve Passwords

```
GET /api/passwords
```

## Update Password

```
PUT /api/passwords/<id>
```

## Delete Password

```
DELETE /api/passwords/<id>
```

## Synchronization

InfraHash instances can synchronize password records.

Trigger synchronization:

```
POST /api/sync-trigger
```

---

# Deployment

## Cloud Deployment (AWS)

Infrastructure is provisioned using Terraform.

Example deployment flow:

```bash
terraform init
terraform plan
terraform apply
```

Terraform provisions:

- VPC
- EKS cluster
- worker nodes
- RDS database
- ALB
- Secrets Manager
- autoscaling infrastructure

---

# Security Features

InfraHash follows modern DevSecOps practices:

- Secrets stored in AWS Secrets Manager
- Database credentials rotated automatically
- Private subnets for compute nodes
- Security groups restrict access
- IAM roles used for least privilege access

---

# Scaling

InfraHash can automatically scale to handle heavy workloads.

Scaling mechanisms include:

- Kubernetes Horizontal Pod Autoscaler
- EKS Cluster Autoscaler
- ALB load balancing

---

# Monitoring

Monitoring stack includes:

- CloudWatch logs
- Prometheus metrics
- Grafana dashboards

These tools provide visibility into:

- system health
- resource usage
- application performance

---

# Use Cases

InfraHash can be used for:

- cybersecurity research
- password recovery
- penetration testing environments
- distributed password cracking labs
- educational environments

---

# Project Structure

```
infrahash/
 ├── infrahash.py
 ├── models.py
 ├── templates/
 ├── static/
 ├── terraform/
 ├── docker/
 └── README.md
```
