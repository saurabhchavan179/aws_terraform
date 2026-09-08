variable "ami_id" {
  type = string
  default = "ami-01a00762f46d584a1"
}

variable "subnet_id" {
    type = string
    default = "subnet-08e972f8f289d307c"
    description = "This is for the sub_id"
  }

  variable "instance_type" {
    type = string
    default = "t3.micro"
    description = "This for the ins_type"
    
  }

  variable "instance_count" {
    type = number
    default = 1
       description = "This for the ins_count"
    
  }

variable "public_ip" {
    type = bool
    default = true
    description = "This is for the public ip"
  
}

output "instance_public_ip" {
    description = "This is for the ec2 public ip"
    value = aws_instance.web_apps.public_ip
}

output "instance_private_ip" {
    description = "This is for the ec2 public ip"
    value = aws_instance.web_apps.private_ip
}

output "instance_private_dns" {
    description = "This is for the ec2 public ip"
    value = aws_instance.web_apps.private_dns
}