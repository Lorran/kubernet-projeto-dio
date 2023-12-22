# Kubernetes PHP and MySQL Deployment

This project contains Dockerfiles and Kubernetes configurations for deploying a PHP application and a MySQL database.

## Components

The project includes the following components:

- Dockerfiles for building the PHP application and MySQL database images.
- Kubernetes deployment and service configurations for the PHP application and MySQL database.

### Dockerfiles

The Dockerfiles are located in the `DockerFile` directory.

- `BackEnd`: This Dockerfile builds an image based on `php:7.4-apache` for the PHP application.
- `Database`: This Dockerfile builds an image based on `mysql:5.7` for the MySQL database. It uses the `--platform=linux/amd64` option because it's designed to be built on a Macbook M1.

### Kubernetes Configurations

- `Deployment.yml`: This file contains the Kubernetes Deployment configurations for the PHP application and MySQL database. It defines the Pods, their containers, and their specifications.
- `Services.yml`: This file contains the Kubernetes Service configurations for the PHP application and MySQL database. It defines how the Pods are exposed to the network.

### Script

- `script.sh`: This script automates the process of building the Docker images and deploying the Kubernetes configurations. It first builds the Docker images using the Dockerfiles, then deploys the Kubernetes configurations using `kubectl apply`.

## Installation

To deploy this project on a Kubernetes cluster, follow these steps:

```bash
# Clone the repository
git clone https://github.com/Lorran/kubernet-projeto-dio.git

# Navigate to the project directory
cd kubernet-projeto-dio.git

# Run the script
./script.sh
```
