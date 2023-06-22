#!/bin/bash

# Criar o Deployment
kubectl apply -f deploy_desafio.yml

# Criar o Service
kubectl apply -f service_desafio.yml

# Aguardar a disponibilidade dos Pods
kubectl wait --for=condition=Available deployment/fiap-deployment

# Exibir informações sobre os recursos criados
kubectl get all
