# technical-interview
Challenge for applying Getaclub

## Kubernetes

The configuration for the kubernetes is only a deployment of the image working with two replicas.
server:latest is the name I gave to the image on my local environment.
As this was tested locally using minikube, it's needed to run __eval $(minikube -p minikube docker-env)__ before building the image, and adding a never pull policiy to the container spec, so minikube can finid the image.


# Terraform

The terraform configuration was made thinking in an AWS environment, and the simplest configuration possible using the EKS module for terraform.
