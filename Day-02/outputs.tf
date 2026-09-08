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