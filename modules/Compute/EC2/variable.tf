variable "ami_id" {
  type = string
  
}

variable "subnet_id" {
    type = string
    description = "This is for the sub_id"
  }

  variable "instance_type" {
    type = string

    description = "This for the ins_type"
    
  }

  variable "instance_count" {
    type = number
    default = 1
       description = "This for the ins_count"
    
  }

variable "public_ip" {
    type = bool
    description = "This is for the public ip"
  
}

variable "instance_name" {
    type = string
}

variable "security_group_ids" {
    type = list(string)
    description = "This is for the security group ids"
  
}