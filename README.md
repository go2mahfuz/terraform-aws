# Terraform AWS Modular Infrastructure

This repository contains a **modular Infrastructure as Code (IaC)** setup using Terraform to provision AWS resources including:

- VPC (networking layer)
- EC2 instances (compute layer)
- S3 buckets (storage layer)

Designed with **production-grade best practices**, multi-environment support, and reusable modules.

---

# Architecture Overview

The infrastructure follows a modular design:
env (dev/prod)
↓
modules (vpc, ec2, s3)
↓
AWS Infrastructure

Each module is independently reusable and environment-agnostic.

---

# 📁 Project Structure
modules/ → Reusable Terraform modules
env/dev/ → Development environment
env/prod/ → Production environment
scripts/ → Helper automation scripts


---

# ⚙️ Prerequisites
Ensure the following are installed:

- Terraform >= 1.5+
- AWS CLI configured
- Git

Configure AWS:

```bash
aws configure

How to Deploy
1. Clone Repository
git clone https://github.com/<your-username>/terraform-aws-modular-infra.git
cd terraform-aws-modular-infra

2. Deploy DEV Environment

cd env/dev
terraform init
terraform plan
terraform apply

3. Destroy Infrastructure (if needed)
terraform destroy

🧩 Modules Overview
VPC Module

Creates:

VPC
Public Subnet
EC2 Module

Creates:

EC2 instance
Attaches subnet
S3 Module

Creates:

S3 bucket
Versioning enabled

Best Practices Implemented
  ✔ Modular design (reusable components)
  ✔ Environment separation (dev/prod)
  ✔ Remote state support
  ✔ Versioned S3 buckets
  ✔ Clean variable management
  ✔ Git-ignored sensitive files
  ✔ Production-ready structure

🧠 Key Learning Outcomes

This project demonstrates:
  Infrastructure as Code (IaC) with Terraform
  Modular architecture design
  AWS resource provisioning
  State management strategies
  Environment-based deployment patterns

🔄 Future Improvements
  Add VPC security groups module
  Add RDS database module
  Add ALB (Application Load Balancer)
  Add CI/CD pipeline using GitHub Actions
  Add Terraform linting (tflint)
  Add policy-as-code (Sentinel / OPA)

👤 Author

Maintained by: Mahfuz Rahman
