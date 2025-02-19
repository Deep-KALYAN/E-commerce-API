#!/bin/bash

# Create Podman network
podman network create backend-test-network

# Run MongoDB container
podman run -d --name db-container --network backend-test-network --network-alias db-container mongo

# Build and run the Express API container
podman build -t express-project .
podman run -d --name express-app --network backend-test-network -p 5201:5000 express-project

echo "Containers are up and running!"