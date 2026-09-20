# variable "vpc_name" {
#     type        = string
# }

# variable "Environment" {
#     type        = string
# }

# variable "vpc_cidr" {
#     type        = string
# }

# variable "enable_dns_hostnames" {
#     type        = bool
  
# }

# variable "enable_dns_support" {
#     type = bool  
# }

# variable "public_subnet_cidr_01" {
#     type        = string
# }

# variable "public_subnet_01_name" {
#     type        = string
# }

# variable "private_subnet_cidr_01" {
#     type        = string
# }

# variable "private_subnet_01_name" {
#     type        = string
# }

# variable "private_subnet_cidr_02" {
#     type        = string
# }

# variable "private_subnet_02_name" {
#     type        = string
# }

# variable "igw_name" {
#     type        = string
# }

# variable "public_rt_name" {
#     type        = string
# }

# variable "private_rt_name" {
#     type        = string
# }

# variable "subnet_availability_zone_01" {
#     type        = string
# }


# variable "public_subnet_cidr_02" {
#     type        = string
# }

# variable "subnet_availability_zone_02" {
#     type        = string
# }

# variable "public_subnet_02_name" {
#     type        = string
# }

# variable "public_subnet_cidr_03" {
#     type        = string
# }

# variable "subnet_availability_zone_03" {
#     type        = string
# }

# variable "public_subnet_03_name" {
#     type        = string
# }

# variable "private_subnet_cidr_03" {
#     type        = string
# }

# variable "private_subnet_03_name" {
#     type        = string
# }

#########################################################################################
#################################################
# ENVIRONMENT
#################################################

variable "environment" {

  type = string
}

#################################################
# PROJECT
#################################################

variable "project_name" {

  type = string
}

variable "managed_by" {

  type = string

  default = "Terraform"
}

#################################################
# EKS
#################################################

variable "cluster_name" {

  type = string
}

#################################################
# VPC
#################################################

variable "vpc_cidr" {

  type = string
}

#################################################
# SUBNETS
#################################################

variable "public_subnets" {

  type = list(string)
}

variable "private_subnets" {

  type = list(string)
}

#################################################
# AZS
#################################################

variable "availability_zones" {

  type = list(string)
}

#################################################
# SECURITY
#################################################

variable "admin_access_cidr" {

  type = string

  default = "0.0.0.0/0"
}

variable "aws_region" {
  default = "ap-south-1"
}