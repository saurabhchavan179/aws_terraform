resource "aws_instance" "web_apps" {
    ami = var.ami_id
    subnet_id = var.subnet_id
    instance_type = var.instance_type
    # count = var.instance_count
    associate_public_ip_address = var.public_ip
    vpc_security_group_ids = var.security_group_ids

      user_data = <<EOF
              #!/bin/bash
              apt update -y
              sudo apt install nginx -y
              echo "Hello, World!" > /var/www/html/index.html
              EOF


    tags = {
        Name = var.instance_name
    }
  
}