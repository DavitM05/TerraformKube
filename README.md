# 🚀 TerraformKube

A DevOps project demonstrating **Infrastructure as Code**, container orchestration, and CI/CD automation.

## 🛠️ Technologies Used

- 🏗️ **Terraform** – AWS infrastructure configuration
- ☁️ **AWS EC2** – Cloud virtual machine
- ☸️ **Kubernetes** – Container orchestration
- 📦 **Minikube** – Local Kubernetes cluster
- 🌐 **Nginx** – Web server
- ⚙️ **GitHub Actions** – CI/CD automation

## 📁 Project Structure

```text
TerraformKube/
│
├── .github/
│   └── workflows/
│       └── ci.yml
│
├── .gitignore
├── .terraform.lock.hcl
├── deployment.yaml
├── main.tf
├── service.yaml
└── README.md
```

## 🏗️ Terraform – AWS Infrastructure

Terraform is used to configure an AWS EC2 instance.

- Instance type: `t3.micro`
- AWS region: `eu-central-1`
- Output: EC2 Instance ID and Public IP

**Note:** Terraform initialization and planning were completed successfully. The EC2 instance was not created.

## ☸️ Kubernetes – Nginx Deployment

The project uses Kubernetes and Minikube to run an Nginx application locally.

- Deployment name: `myapp`
- Replicas: `2`
- Container image: `nginx:latest`
- Container port: `80`
- Service type: `NodePort`
- NodePort: `30080`

The Nginx application was successfully deployed and tested.

## ⚙️ GitHub Actions – CI Pipeline

A GitHub Actions workflow was created to run on every push to the `main` branch.

Pipeline steps:

1. Checkout repository
2. Print `CI Pipeline Started`
3. Print `Deployment Successful`

The workflow completed successfully.

## 📸 Screenshots

### 🏗️ Terraform Plan

<img width="321" height="99" alt="Снимок экрана — 2026-11-17 в 17 01 45" src="https://github.com/user-attachments/assets/b46f0f3a-4bda-4aef-96cf-0b82d95a780c" />

### ☸️ Kubernetes Pods

<img width="452" height="57" alt="Снимок экрана — 2026-11-17 в 17 00 05" src="https://github.com/user-attachments/assets/fc6235e5-c390-4972-acdc-429c50940595" />

### ⚙️ GitHub Actions

<img width="879" height="250" alt="Снимок экрана — 2026-11-17 в 17 01 04" src="https://github.com/user-attachments/assets/c4d9b6f0-91ce-450c-bb67-5cecfc4bd5aa" />
