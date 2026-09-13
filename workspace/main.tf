resource "aws_key_pair" "custom-key" {
  key_name   = "custom-key-${var.tags}"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHGuqefnq3WsUGSXZlIsfndQsBWkFQB3rLZahobnw+Sj saurabh@aws"
}



resource "aws_instance" "web_apps" {
  ami           = var.ami_id
  subnet_id     = var.subnet_id
  instance_type = var.instance_type
  # count = var.instance_count
  associate_public_ip_address = var.public_ip
  key_name                    = aws_key_pair.custom-key.key_name
  vpc_security_group_ids      = [aws_security_group.allow_tls.id]





  tags = {
    Name = var.tags
  }

}
