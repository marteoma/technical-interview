module "eks" {
    source          = "terraform-aws-modules/eks/aws"
    cluster_name    = var.cluster_name
    subnets         = var.private_subnets
    vpc_id          = var.vpc_id

    worker_groups = [
        {
            name                  = var.worker_group_name
            instance_type         = var.instance_type
            asg_max_size          = var.asg_max_size
        }
    ]
}

data "aws_eks_cluster" "cluster" {
  name = module.my-cluster.cluster_id
}

data "aws_eks_cluster_auth" "cluster" {
  name = module.my-cluster.cluster_id
}


provider "kubernetes" {
  host                   = data.aws_eks_cluster.cluster.endpoint
  cluster_ca_certificate = base64decode(data.aws_eks_cluster.cluster.certificate_authority.0.data)
  token                  = data.aws_eks_cluster_auth.cluster.token
  load_config_file       = false
  version                = "~> 1.9"
}