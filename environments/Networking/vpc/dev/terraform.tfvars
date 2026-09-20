# vpc_name = "tf_vpc"
# vpc_cidr = "10.0.0.0/16"
# Environment = "dev"
# enable_dns_hostnames = true
# enable_dns_support = true
# public_subnet_cidr_01 = "10.0.1.0/24"
# public_subnet_01_name = "tf_public_subnet_01"
# private_subnet_cidr_01 = "10.0.2.0/24"
# private_subnet_01_name = "tf_private_subnet_01"
# private_subnet_cidr_02 = "10.0.3.0/24"
# private_subnet_02_name = "tf_private_subnet_02" 
# igw_name = "my_igw"
# public_rt_name = "public_rt_tf"
# private_rt_name = "private_rt_tf"
# subnet_availability_zone_01 = "ap-south-1a"
# public_subnet_cidr_02 = "10.0.4.0/24"
# subnet_availability_zone_02 = "ap-south-1b"
# public_subnet_02_name = "tf_public_subnet_02"
# public_subnet_cidr_03 = "10.0.5.0/24"
# subnet_availability_zone_03 = "ap-south-1c"
# public_subnet_03_name = "tf_public_subnet_03"
# private_subnet_cidr_03 = "10.0.6.0/24"
# private_subnet_03_name = "tf_private_subnet_03"

#################################################
# ENVIRONMENT
#################################################

environment = "dev"

#################################################
# PROJECT
#################################################

project_name = "prod-web-app"

#################################################
# NETWORKING
#################################################

vpc_cidr = "10.0.0.0/16"

availability_zones = [
  "ap-south-1a",
  "ap-south-1b",
  "ap-south-1c"
]

#################################################
# PUBLIC SUBNETS
#################################################

public_subnets = [
  "10.0.1.0/24",
  "10.0.2.0/24",
  "10.0.3.0/24"
]

#################################################
# PRIVATE SUBNETS
#################################################

private_subnets = [
  "10.0.11.0/24",
  "10.0.12.0/24",
  "10.0.13.0/24"
]
cluster_name      = "dev-eks-cluster"
admin_access_cidr = "0.0.0.0/0"