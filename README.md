# DevOps CI/CD Platform

This project demonstrates a **complete DevOps workflow** including CI/CD automation, containerization, cloud deployment, monitoring, and Kubernetes orchestration.

The goal of this project is to simulate a **real production DevOps pipeline** using modern tools.

---

# DevOps Architecture

```
Developer
   │
   ▼
GitHub Repository
   │
   ▼
GitHub Actions CI/CD Pipeline
   │
   ▼
Docker Image Build
   │
   ▼
DockerHub Registry
   │
   ▼
AWS EC2 Deployment
   │
   ▼
Docker Container Running Application
   │
   ▼
Monitoring Stack
   ├── Prometheus
   ├── Node Exporter
   └── Grafana Dashboard
   │
   ▼
Kubernetes Deployment (Minikube)
   ├── Deployment
   ├── Pods (ReplicaSet)
   └── Service (NodePort)
```

---

# Technologies Used

## DevOps Tools

- Git  
- GitHub  
- GitHub Actions  
- Docker  
- DockerHub  
- Kubernetes  
- Prometheus  
- Grafana  
- Node Exporter  

## Cloud

- AWS EC2

## Backend

- Node.js  
- Express  

## Operating System

- Linux (Ubuntu)

---

# Project Structure

```
devops-cicd-pipeline
│
├── app.js
├── package.json
├── Dockerfile
│
├── deployment.yaml
├── service.yaml
│
├── prometheus.yml
├── alerts.yml
│
├── deploy.sh
│
└── .github/workflows
      └── pipeline.yml
```

---

# CI/CD Pipeline

This project implements a **Continuous Integration and Continuous Deployment pipeline**.

Workflow:

1. Developer pushes code to GitHub  
2. GitHub Actions triggers automatically  
3. Docker image is built  
4. Image is pushed to DockerHub  
5. GitHub Actions connects to the EC2 server using SSH  
6. Deployment script pulls the latest image  
7. Old container stops and new container starts  

---

# Docker Container

The application runs inside a Docker container.

Build image:

```bash
docker build -t devops-cicd-demo .
```

Run container:

```bash
docker run -p 3000:3000 devops-cicd-demo
```

---

# Monitoring Stack

Monitoring is implemented using:

```
Node Exporter → Prometheus → Grafana
```

Metrics collected:

- CPU Usage  
- Memory Usage  
- Disk Usage  
- Network Usage  

Prometheus scrapes system metrics from Node Exporter and stores them.

Grafana visualizes these metrics using dashboards.

---

# Kubernetes Deployment

The application can also be deployed using Kubernetes.

Deployment file:

```
deployment.yaml
```

Service file:

```
service.yaml
```

Deploy to Kubernetes:

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Check pods:

```bash
kubectl get pods
```

Access service:

```bash
minikube service devops-service
```

---

# Features

- Automated CI/CD pipeline  
- Docker containerization  
- Cloud deployment on AWS  
- Monitoring with Prometheus and Grafana  
- Kubernetes deployment  
- Container orchestration and scaling  

---

# Future Improvements

Possible improvements for this project:

- Kubernetes auto-scaling (HPA)  
- Infrastructure as Code using Terraform  
- Helm charts for Kubernetes deployment  
- Centralized logging using ELK stack  
- Production Kubernetes cluster deployment  

---

# Author

Thahir SK  
DevOps Enthusiast | Cloud | Automation | Kubernetes
