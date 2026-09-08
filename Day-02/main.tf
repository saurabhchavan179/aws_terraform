resource "aws_instance" "web_apps" {
    ami = var.ami_id
    subnet_id = var.subnet_id
    instance_type = var.instance_type
    # count = var.instance_count
    associate_public_ip_address = var.public_ip


    tags = {
        Name = "web-app"
    }
  
}