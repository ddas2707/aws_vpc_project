![AWS Terraform Infra](https://github.com/user-attachments/assets/b4d75c5d-9a94-49e8-a40f-da1d55ae8ea1)

Perfect — you can make your **README.md** look natural, detailed, and written by you while still explaining your Terraform project well.
Here’s a personalized version based on your setup (VPC, subnets, EC2s, S3, ALB, and user data scripts) and the YouTube video you’re following 👇

---

## 🧩 Setting up Infrastructure on AWS using Terraform

This project demonstrates how I automated the setup of a complete AWS infrastructure using **Terraform**.
The goal was to learn Infrastructure as Code (IaC) concepts and understand how Terraform can provision AWS resources automatically.

---

### 🚀 Project Overview

The architecture I built includes the following components:

* **VPC** — Custom Virtual Private Cloud for isolating the network.
* **Subnets** — Two **public subnets** across different availability zones for high availability.
* **Internet Gateway (IGW)** — To allow instances to communicate with the internet.
* **Route Table** — Configured to route external traffic through the internet gateway.
* **Security Group** — Allows inbound HTTP (port 80) and HTTPS (port 443) traffic.
* **EC2 Instances** — Two web servers launched in the public subnets with Apache installed using user data scripts.
* **S3 Bucket** — Created to store and retrieve static content (like images or project files).
* **Application Load Balancer (ALB)** — Distributes traffic between the two web servers.

---

### ⚙️ Tools & Technologies

* **Terraform** (IaC tool)
* **AWS** (EC2, S3, VPC, ALB)
* **VS Code** (for editing `.tf` files)
* **AWS CLI** (for basic verification)

---

### 🧱 Steps I Followed

1. **Created a VPC and Subnets** – Defined CIDR blocks for the VPC and public subnets.
2. **Attached an Internet Gateway** – To enable internet access for the public subnets.
3. **Added a Route Table** – Connected subnets with IGW for outbound access.
4. **Created a Security Group** – Opened HTTP (80) and HTTPS (443) ports.
5. **Provisioned EC2 Instances** – Used Ubuntu AMI and attached user data to automatically install and start Apache.
6. **Created an S3 Bucket** – For storing static assets (like images used in my web page).
7. **Set Up an Application Load Balancer** – To route traffic across both EC2 instances.
8. **Tested Everything** – Accessed the ALB DNS name to see my custom HTML page showing the **Instance ID** and **Server name**.

---

### 💻 User Data Script Summary

Each EC2 instance uses a `userdata.sh` script that:

* Updates the system
* Installs Apache and AWS CLI
* Fetches instance metadata using IMDSv2
* Generates a simple animated HTML portfolio page with the instance ID displayed

---

### 🧩 Terraform Features Used

* **Variables** for CIDR blocks and region
* **Outputs** to display public IPs and DNS names
* **Provisioners** (user data scripts)
* **State management** with Terraform CLI
* **Plan & Apply workflow** for safe deployments

---

### ✅ Commands I Used

```bash
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```

---

### 📸 Architecture Diagram

Below is the architecture of my setup:

![Architecture](./architecture.png)

This diagram shows:

* One **VPC**
* Two **public subnets**
* Two **EC2 instances**
* One **ALB**
* One **S3 bucket**

---

### 🔍 Learnings

* Understood how **Terraform state** tracks resource changes.
* Learned about **IMDSv2** (for EC2 metadata security).
* Got hands-on with **networking concepts** like VPCs, subnets, and route tables.
* Practiced automating infrastructure instead of using the AWS console manually.

---

### 📚 Reference

Inspired by [Abhishek Veeramalla’s YouTube Tutorial](https://www.youtube.com/watch?v=Koabqyopqns)
I customized and built my own version of the project.

---
