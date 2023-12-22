#!/bin/bash

#aws eks --region sa-east-2 update-kubeconfig --name kubernet-pi-lab

echo "Criando as imagens"

docker build -t lorranpimenta/projeto-backend:1.0 backend/.

docker build -t lorranpimenta/projeto-database:1.0 database/.

echo "Criando os serviços no cluster kubernets"

kubectl apply -f ./services.yml

echo "Criando os deployments"

kubectl apply -f ./deployment.yml
