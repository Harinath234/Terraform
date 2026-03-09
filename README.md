# 🌍 Terraform Infrastructure Projects

🚀 This repository contains multiple **Terraform Infrastructure-as-Code (IaC) projects** demonstrating real-world **AWS infrastructure automation**.

Each folder in this repository contains **Terraform scripts used to provision and manage cloud resources** such as EC2, VPC, remote backends, and complete 3-tier architectures.

---

## 🛠 DevOps Tools & Technologies

![Terraform](https://img.shields.io/badge/Terraform-623CE4?logo=terraform\&logoColor=white)
![AWS](https://img.shields.io/badge/AWS-232F3E?logo=amazonaws\&logoColor=white)
![Jenkins](https://img.shields.io/badge/Jenkins-D24939?logo=jenkins\&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?logo=docker\&logoColor=white)
![Linux](https://img.shields.io/badge/Linux-FCC624?logo=linux\&logoColor=black)
![Git](https://img.shields.io/badge/Git-F05032?logo=git\&logoColor=white)

---

## 📂 Project Structure

Each directory below contains **Terraform configuration files (.tf)** used to create and manage AWS infrastructure.

```
Terraform
│
├── 1-AwsInstance
│   └── Terraform scripts to create AWS EC2 instances
│
├── 2-multi-region
│   └── Deploy infrastructure across multiple AWS regions
│
├── 3-MiniProject
│   └── Basic infrastructure provisioning project
│
├── 4-variables
│   └── Example usage of Terraform variables
│
├── 5-MiniProject-Variables
│   └── Infrastructure deployment using variables
│
├── 6-MiniProject-Modules
│   └── Modular Terraform architecture
│
├── 7-MiniProject-Workspace
│   └── Terraform workspaces for multiple environments
│
├── 8-JENKINS-INSTALL
│   └── Jenkins installation using Terraform
│
├── 9-Provisioners
│   └── Using Terraform provisioners (remote-exec, local-exec)
│
├── 10-RemoteBackend
│   └── Terraform remote backend configuration
│
├── 11-RemoteBackend-DynamoDB
│   └── Remote state management with S3 and DynamoDB locking
│
├── 12-3TierArchitecture
│   └── AWS 3-Tier Architecture using Terraform
│
├── 13-Import
│   └── Import existing AWS resources into Terraform state
│
├── 14-Statefile
│   └── Terraform state file management examples
│
├── 15-datasource
│   └── Using Terraform data sources
│
└── 16-Disaster_Recovery_3tier_Terraform
    └── Disaster Recovery architecture for 3-tier applications
```

---

## 🚀 How to Use Terraform

Initialize Terraform:

```
terraform init
```

Check execution plan:

```
terraform plan
```

Deploy infrastructure:

```
terraform apply
```

---

## 🧹 Destroy Infrastructure

To remove all resources created by Terraform:

```
terraform destroy
```

---

## 🌐 Connect With Me

* 💼 LinkedIn
* 🐳 Docker Hub  
* 💻 GitHub

🚀 Passionate about **Cloud, DevOps, and Infrastructure Automation using Terraform.**
