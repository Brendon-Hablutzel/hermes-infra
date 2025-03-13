#!/bin/bash

bash prepare-secrets.sh
kubectl apply -f hermes-namespace.yaml
kubectl apply -f backend-secret.yaml
kubectl apply -f projects-configmap.yaml
kubectl apply -f backend-deployment.yaml
kubectl apply -f backend-service.yaml
kubectl apply -f prometheus-clusterrole.yaml
kubectl apply -f prometheus-serviceaccount.yaml
kubectl apply -f prometheus-clusterrolebinding.yaml
kubectl apply -f prometheus-configmap.yaml
kubectl apply -f prometheus-deployment.yaml
kubectl apply -f prometheus-service.yaml
