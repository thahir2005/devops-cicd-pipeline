#!/bin/bash

echo "Stopping old containers..."

docker stop $(docker ps -q) 2>/dev/null || true
docker rm $(docker ps -aq) 2>/dev/null || true

echo "Pulling latest image..."

docker pull thahirshaik17/devops-cicd-demo

echo "Starting new container..."

docker run -d -p 3000:3000 --name devops-cicd-pipeline thahirshaik17/devops-cicd-demo
