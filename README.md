DevOps Assignment 1 – Manual EC2 Deployment (AWS) (main Branch) 

This assignment demonstrates the manual deployment of a Spring Boot application on an AWS EC2 instance using environment-specific configuration and a custom shell script. The project follows clean DevOps practices and is designed to support both dev and prod environments.

Project Structure:

tech_eazy_devops_somiyakhan07/
├── dev_config                   → Environment variables for dev
├── prod_config                  → Environment variables for prod
├── deploy.sh                    → Deployment script
├── resources/
│   └── postman_collection.json  → API testing collection
└── README.md                    → Project overview & usage

Technologies Used:

- AWS EC2 (Ubuntu)
- Java 21 (OpenJDK)
- Maven
- Spring Boot
- Shell Scripting
- Postman
- Git & GitHub

How to Deploy:

Make sure you're on an EC2 Ubuntu instance with internet access.

Step 1: Connect to EC2 and clone this repo:

git clone https://github.com/somiyakhan07/tech_eazy_devops_somiyakhan07.git

cd tech_eazy_devops_somiyakhan07

Step 2: Run the deployment script:

Make the Script Executable
Run this command in your terminal from inside the project foldder

chmod +x deploy.sh

For dev environment (default):

./deploy.sh dev

For prod environment:

./deploy.sh prod

What the script does:

- Loads config from dev_config or prod_config
- Installs Java, Maven, and Git
- Clones the Spring Boot repo
- Builds and runs the app on port 80

API Testing with Postman:

After deployment, test the API with this GET request:

http://your-ec2-public-ip/hello

Expected response:

Hello from Spring MVC!

Postman collection is available inside the resources folder:
resources/postman_collection.json

Notes:

- Application runs on port 80 (required for assignment)
- All values are configured via external config files
- No secrets are hardcoded
- Tested using t3.micro EC2 instance (free-tier)
- Repository contains only essential files

## Assignment 2 – Terraform Automation: EC2 + S3 + IAM (Assignment 2 Branch) 

This project automates deployment of a Spring Boot app using Terraform, EC2, IAM Roles, and S3.

How it works:
- EC2 instance is created via Terraform
- Spring Boot app runs on port 8080
- Logs (app.log, cloud-init.log) are uploaded to S3
- S3 bucket has a 7-day lifecycle rule
- IAM Role B attached to EC2 with write-only access

🌐 Live App URL:
http://your-publiv-ip:8080/hello

 📦 Logs uploaded to S3:
- s3://somiya-devops-logs/app/logs/app.log`
- s3://somiya-devops-logs/var/log/cloud-init.log`

 📁 To deploy:

cd terraform
terraform apply -var="bucket_name=somiya-devops-logs" -var="key_name=pem"
