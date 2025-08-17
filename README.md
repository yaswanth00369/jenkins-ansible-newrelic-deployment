# 🚀 Jenkins + Ansible Deployment with New Relic Integration ⚡ 

Automated **CI/CD pipeline** leveraging **Jenkins** and **Ansible** to deploy applications on **AWS EC2** and **Docker containers**, seamlessly integrated with **New Relic** for full-stack observability and proactive monitoring. 🛠️📊

---

## 🧱 Architecture

> ✅ VS Code → GitHub → Jenkins → Ansible → NewRelic Deploy at Infra Setup time

![Architecture Diagram](NewRelic-Jenkins-Ansible-Deployment.drawio.png)

---

## 📌 Overview
This project demonstrates a **DevOps workflow** that automates application deployment into two environments:  
1️⃣ **AWS EC2 Instance**  
2️⃣ **Docker Container**  

Both deployment pipelines include **New Relic integration**, enabling real-time insights into infrastructure and application performance. 🔍💡

---

## ⚙️ Tech Stack
- 🖥️ **Jenkins** – CI/CD automation
- 🤖 **Ansible** – Deployment automation
- ☁️ **AWS EC2** – Cloud infrastructure
- 📦 **Docker** – Containerization
- 📊 **New Relic** – Monitoring & observability
- 🗂️ **GitHub** – Source code management

---

## 🔄 Pipeline Workflow

### 1️⃣ AWS EC2 Deployment
1. Jenkins clones the GitHub repository.  
2. Ansible provisions the EC2 instance.  
3. **User Data script** installs and configures the New Relic Infrastructure Agent for monitoring. 🖥️📡  

### 2️⃣ Docker Container Deployment
1. Jenkins clones the GitHub repository.  
2. Docker image is built with embedded New Relic integration. 🐳📈  
3. Ansible deploys the container to the target server with monitoring enabled.  

---

## 🚀 Getting Started

### ✅ Prerequisites
- Jenkins installed and configured  
- Ansible installed  
- Docker installed (for container deployment)  
- New Relic API Key & Account ID  

### 🔑 Environment Variables & Secrets

- `NEW_RELIC_API_KEY`  
- `NEW_RELIC_ACCOUNT_ID`
-  `license_key`

### 📊 Monitoring
After deployment, you can view:  
- **Infrastructure Metrics** → New Relic Infrastructure  
- **Application Performance Data** → New Relic APM (if enabled)
 
---

## EC2 Integration with NewRelic

<img width="1288" height="435" alt="image" src="https://github.com/user-attachments/assets/1503f37b-f25e-47a7-9a56-5cd4434d7c4b" />

<img width="1292" height="696" alt="image" src="https://github.com/user-attachments/assets/2e30ceea-0d45-41c1-8c1f-232a2b0a9001" />

<img width="1302" height="695" alt="image" src="https://github.com/user-attachments/assets/90950961-c0ad-4339-874b-4362d5a3cc01" />

<img width="1302" height="695" alt="image" src="https://github.com/user-attachments/assets/0c7e20a3-e489-40c2-b020-0ea5c008ae65" />


---

## Docker Container with NewRelic

<img width="1302" height="453" alt="image" src="https://github.com/user-attachments/assets/d53b6d3f-5465-4b4e-a237-a681a22e68a1" />

<img width="1302" height="453" alt="image" src="https://github.com/user-attachments/assets/ebde6ab9-18de-4035-a37d-3f2ba0ba0fc1" />

<img width="1302" height="453" alt="image" src="https://github.com/user-attachments/assets/71336079-50e4-44bb-9d37-25b2687992f7" />

<img width="1302" height="174" alt="image" src="https://github.com/user-attachments/assets/003e05e6-054a-4100-89ca-cca91bb82138" />

<img width="1295" height="649" alt="image" src="https://github.com/user-attachments/assets/7a4c4c16-d46f-46cb-9488-76767b32267f" />

---
