# AWS Networking Architecture with Terraform

![Status](https://img.shields.io/badge/status-Completed-brightgreen)

## 🚀 Project Overview

This project provisions a secure, multi-tier AWS networking architecture using **Terraform**.  
It demonstrates core cloud engineering concepts such as network isolation, routing, internet access control, and Infrastructure as Code (IaC).

---

## 🏗️ Architecture

This project deploys:

- A custom **VPC**
- **Public and Private Subnets** across availability zones
- **Internet Gateway (IGW)** for public subnet access
- **Route Tables** and associations
- **Security Groups** for controlled inbound/outbound traffic

### Architecture Diagram
(Diagram to be added here under `/docs/architecture.png`)

---

## 🧰 Tech Stack

- **AWS**
- **Terraform**
- **AWS CLI**
- Region: `eu-north-1`

---

## 📂 Repository Structure

``````md
├── infra/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── vpc.tf
│   ├── subnets.tf
│   ├── routes.tf
│   └── security-groups.tf
├── docs/
│   └── architecture.png
└── README.md
``````
---

## ✨ Features

- Custom VPC creation  
- Public and private subnet segmentation  
- Internet Gateway for public routing  
- Route tables controlling network traffic  
- Security groups acting as virtual firewalls  
- Fully reproducible IaC deployment  

---

## ⚙️ Deployment

### Prerequisites

- AWS account  
- AWS CLI configured  
- Terraform installed (v1.13+)  

### Commands

```bash
cd infra/
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```
## 📘 Technical Design

### VPC
- Custom CIDR for structured IP allocation.

### Subnets
- Public subnets for internet-facing resources  
- Private subnets for internal workloads  

### Routing
- IGW for public outbound access  
- Route tables define traffic flow  

### Security
- Security groups use least-privilege rules  
- Controlled inbound/outbound traffic  

---

## 🧪 Testing
- `terraform validate`  
- `terraform fmt`  
- Manual validation in the AWS Console  

---

## 🐛 Challenges & Learnings
- Improved understanding of VPC, routing, and subnet design  
- Learned to structure Terraform projects cleanly  
- Discovered VSCode-based workflows for IaC development  

---

## 🔗 Resources
- Terraform Documentation  
- AWS VPC Documentation  

---

## 📜 License
Authored by © Genesis Phillips
