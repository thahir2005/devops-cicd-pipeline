
# DevOps CI/CD Pipeline Project

This project demonstrates a complete **CI/CD and Continuous Deployment pipeline** using Docker, GitHub Actions, Docker Hub, and AWS EC2.

The pipeline automatically builds, pushes, and deploys a containerized application whenever code is pushed to GitHub.

---

## Architecture

Developer
↓
GitHub Repository
↓
GitHub Actions CI/CD Pipeline
↓
Docker Image Build
↓
Docker Hub Registry
↓
AWS EC2 Server
↓
Automatic Deployment Script
↓
Running Docker Container

---

## Technologies Used

- Linux (Ubuntu EC2)
- Git & GitHub
- GitHub Actions (CI/CD)
- Docker
- Docker Hub
- AWS EC2
- Bash scripting

---

## How the CI/CD Pipeline Works

1. Developer pushes code to GitHub.
2. GitHub Actions pipeline is triggered.
3. Docker image is built automatically.
4. The image is pushed to Docker Hub.
5. GitHub Actions connects to AWS EC2 via SSH.
6. The deployment script runs on the server.
7. Old container is stopped.
8. Latest Docker image is pulled.
9. New container starts automatically.

---

## Deployment Script

The deployment script runs on the EC2 server and performs automatic updates.

```bash
#!/bin/bash

docker stop $(docker ps -q) 2>/dev/null || true
docker rm $(docker ps -aq) 2>/dev/null || true

docker pull USERNAME/devops-cicd-demo

docker run -d -p 3000:3000 --name devops-app USERNAME/devops-cicd-demo



Application Access

Once deployed, the application runs on:

http://EC2_PUBLIC_IP:3000

Project Goals

This project was built to demonstrate:
	•	CI/CD automation
	•	Containerization with Docker
	•	Cloud deployment on AWS
	•	DevOps best practices

⸻

Future Improvements
	•	Add monitoring with Prometheus and Grafana
	•	Implement Kubernetes deployment
	•	Add Infrastructure as Code using Terraform


---

# Step 3 — Save

Press:

CTRL + X
Y
ENTER


---

# Step 4 — Push to GitHub

Run:

```bash
git add README.md
git commit -m "Added project README"
git push

# Step 5 — Verify

Open your repo on GitHub.
You will now see a professional README page at the top of the repository.


## Monitoring Stack

This project includes a monitoring stack built with:

- Prometheus
- Grafana
- Node Exporter

Architecture:

Node Exporter
     ↓
Prometheus
     ↓
Grafana

Metrics monitored:

- CPU usage
- Memory usage
- Disk usage
- Network traffic
