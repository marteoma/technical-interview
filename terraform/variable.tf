variable "asg_max_size" {
  type        = number
  default     = 2
}

variable "instance_type" {
  type        = string
  default     = "t2.micro"
}

variable "worker_group_name" {
  type        = string
}

variable "cluster_name" {
  type        = string
}

variable "worker_group_name" {
  type        = string
}

variable "private_subnets" {
  type        = list(string)
}

variable "vpc_id" {
  type        = string
}