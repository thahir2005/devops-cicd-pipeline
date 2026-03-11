
# DevOps CI/CD Platform

This project demonstrates a **complete DevOps workflow** including CI/CD automation, containerization, cloud deployment, and monitoring.

---

## Architecture

Developer
   ↓
GitHub Repository
   ↓
GitHub Actions CI/CD
   ↓
Docker Image Build
   ↓
DockerHub Registry
   ↓
AWS EC2 Deployment
   ↓
Running Container
   ↓
Monitoring Stack
(Prometheus + Grafana + Node Exporter)

---

## Technologies Used

- Linux (Ubuntu)
- Git & GitHub
- GitHub Actions (CI/CD)
- Docker
- Docker Hub
- AWS EC2
- Prometheus
- Grafana
- Node Exporter
- Bash scripting

---

## CI/CD Pipeline

The pipeline automatically:

1. Builds a Docker image
2. Pushes the image to DockerHub
3. Connects to the EC2 server via SSH
4. Runs the deployment script
5. Updates the running container

---

## Monitoring Stack

Server monitoring is implemented using:

Node Exporter → Prometheus → Grafana

Metrics collected:

- CPU usage
- Memory usage
- Disk usage
- Network traffic

---

## Running Services

| Service | Port |
|------|------|
| Application | 3000 |
| Grafana | 3001 |
| Prometheus | 9090 |
| Node Exporter | 9100 |

---

## Future Improvements

- Kubernetes deployment
- Infrastructure as Code (Terraform)
- Alertmanager integration
- Application metrics monitoring
