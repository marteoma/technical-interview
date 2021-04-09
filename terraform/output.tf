output "cluster_endpoint" {
    value = module.eks.cluster_endpoint
}

output "kubectl_config" {
    module.eks.kubectl_config
}