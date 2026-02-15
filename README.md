# 🚀 AWS Auto Scaling DevOps Project

Production-style DevOps infrastructure deployed on AWS using **Terraform** and **Ansible**.

This project demonstrates Infrastructure as Code, configuration automation, and dynamic scaling using modern DevOps practices.

---

## 📌 Project Overview

This project builds a highly available web application environment on AWS:

- Custom VPC with Public Subnets
- Application Load Balancer (ALB)
- Auto Scaling Group (ASG)
- Dynamic EC2 configuration using Ansible
- Nginx web server deployment
- Dynamic AWS Inventory

Infrastructure is provisioned using **Terraform Modules**, and configuration is managed by **Ansible**.

---

## 🛠 Technologies Used

- AWS (EC2, VPC, ALB, Auto Scaling)
- Terraform (Modular Infrastructure)
- Ansible (Automation & Roles)
- Dynamic Inventory (aws_ec2 plugin)
- Nginx
- Linux (WSL)

---

## 🏗 Architecture

<img width="1024" height="1536" alt="image" src="https://github.com/user-attachments/assets/ab53f469-9c8f-41df-842b-4c32aa06bd0f" />


### Key Components

- **VPC** with public subnets across multiple AZs
- **ALB** distributes traffic to EC2 instances
- **Launch Template** defines instance configuration
- **Auto Scaling Group** maintains desired capacity
- **Ansible Role** installs and configures Nginx automatically

---

## ⚙️ Deployment Flow

1. Terraform provisions infrastructure
2. Auto Scaling launches EC2 instances
3. Ansible Dynamic Inventory discovers running instances
4. Ansible installs and configures Nginx
5. ALB serves traffic across instances

---

## 📂 Project Structure

aws-autoscaling-devops-project/
│
├── terraform/
│ ├── modules/
│ │ ├── network/
│ │ └── security/
│ ├── main.tf
│ └── variables.tf
│
├── ansible/
│ ├── roles/webserver/
│ ├── aws_ec2.yml
│ └── playbook.yml
│
└── README.md


---

## 🚀 How To Deploy

### 1️⃣ Provision Infrastructure

```bash
cd terraform
terraform init
terraform apply

