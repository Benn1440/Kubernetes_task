#!/bin/bash

# Defuining the name of the Kind cluster
CLUSTER_NAME="kubecluster"

# Check if KinD is installed
if ! command -v kind &>/dev/null; then
  echo "KinD Kubernetes in Docker is not installed. kindly install."
  exit 1
fi

# Check if the cluster already exists
# if kind get clusters | grep -q "$CLUSTER_NAME"; then
#   echo "Cluster $CLUSTER_NAME already exists. Deleting it..."
#   kind delete cluster --name "$CLUSTER_NAME"
# fi

# Create a new KinD cluster
echo "Creating a new KinD cluster: $CLUSTER_NAME"
kind create cluster --name "$CLUSTER_NAME"

# Configure kubectl to use the new cluster
kubectl config use-context $CLUSTER_NAME
kubectl cluster-info --context "kind-$CLUSTER_NAME"

echo "KinD cluster '$CLUSTER_NAME' has been successfully deployed
