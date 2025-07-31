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
