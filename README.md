# TechEazy DevOps Projects – EC2 Deployment & Cloud Automation

This repository showcases two DevOps projects completed during the TechEazy Consulting Internship. It demonstrates both manual and automated approaches to deploying cloud-native applications using AWS and DevOps best practices.

---

## 🚀 Project 1: Manual Deployment of Spring Boot Application on AWS EC2

This project demonstrates the manual provisioning and deployment of a Spring Boot application on an AWS EC2 instance using shell scripting and environment-specific configuration files.

### ✅ Features

- Environment-based deployment support (dev/prod)
- Installs Java, Maven, Git
- Clones and builds a Spring Boot application from GitHub
- Runs the application on port 80
- Includes Postman collection for API testing

### 📁 Project Structure

```

tech_eazy_devops_somiyakhan07/
├── dev_config
├── prod_config
├── deploy.sh
├── resources/
│ └── postman_collection.json
└── README.md

````

### 🧰 Technologies Used

- AWS EC2 (Ubuntu)
- Java 21 (OpenJDK)
- Maven
- Spring Boot
- Bash Scripting
- Git & GitHub
- Postman

### 🚀 Deployment Instructions

1. SSH into your EC2 Ubuntu instance.
2. Clone the repository:
  
   git clone https://github.com/somiyakhan07/tech_eazy_devops_somiyakhan07.git
   cd tech_eazy_devops_somiyakhan07

3. Make the script executable:
  
   chmod +x deploy.sh
   
4. Run the deployment:

   
   ./deploy.sh        # for Dev environment
   ./deploy.sh prod   # for Prod environment
  

### 🔍 API Testing

Endpoint: `http://<your-ec2-public-ip>/hello`
Expected Response: `Hello from Spring MVC!`
Postman Collection: `resources/postman_collection.json`

---

## ⚙️ Project 2: Infrastructure Automation with Terraform – EC2, S3, IAM

This project automates cloud infrastructure provisioning using Terraform. It sets up IAM roles, launches an EC2 instance with a write-only role, uploads logs to an S3 bucket, and applies lifecycle management.

### ✅ Features

* Terraform automation for EC2, IAM, and S3
* IAM Role B with write-only access attached to EC2 via instance profile
* IAM Role A with read-only access used for log verification
* S3 bucket name configured via variable (mandatory)
* Uploads EC2 logs and application logs to S3
* Lifecycle rule deletes logs after 7 days

### 📁 Terraform Directory Structure

terraform/
├── main.tf
├── iam.tf
├── ec2.tf
├── s3.tf
├── variables.tf
└── outputs.tf

### 🧰 Tools & Services Used

* AWS EC2
* IAM (Roles & Instance Profile)
* S3 (private bucket, lifecycle policy)
* Terraform (Infrastructure as Code)
* Bash scripting for log handling

### 🛠️ Deployment Instructions

cd terraform
terraform init
terraform apply -var="bucket_name=somiya-devops-logs" -var="key_name=my-key"


### 🌐 Application & Logs

Application & Logs
Application URL: http://<your-ec2-public-ip>:8080/hello

Logs Stored in S3:

/setup/logs/cloud-init.log

/app/logs/app.log

---

## 👥 Collaborators (as required by TechEazy)

Shivyandralwar2019@gmail.com

dharesh.a.p@gmail.com

cpandey05@gmail.com

siddpawar583@gmail.com

trainings.techeazyconsulting@gmail.com

---

## 📌 Notes
No AWS secrets or access keys are hardcoded.

All configurations are parameterized for stage-based deployment.

Logs are securely archived with a 7-day lifecycle policy.

The project follows DevOps best practices in both manual and automated environments