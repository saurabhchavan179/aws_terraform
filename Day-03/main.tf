



resource "aws_instance" "web_apps" {
  ami           = var.ami_id
  subnet_id     = var.subnet_id
  instance_type = var.instance_type
  # count = var.instance_count
  associate_public_ip_address = var.public_ip
  key_name  = "mumbai"
  vpc_security_group_ids = [aws_security_group.allow_tls.id]




  user_data = <<EOF
              #!/bin/bash
              apt update -y
              sudo apt install nginx -y
              echo "Hello, World!" > /var/www/html/index.html
              EOF


  tags = {
    Name = "web-app"
  }

}
