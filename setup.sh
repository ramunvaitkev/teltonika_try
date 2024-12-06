#!/bin/bash

# Ensure Docker is running
if ! docker info > /dev/null 2>&1; then
  echo "Docker is not running. Please start Docker."
  exit 1
fi

# Create necessary directories
mkdir -p nginx html/load-balancer html/web1 html/web2

# Copy default configuration and content
cp -r nginx/* nginx/
cp -r html/* html/

# Start the project
docker-compose up -d

echo "Project setup complete. Access the Load Balancer at http://localhost."
