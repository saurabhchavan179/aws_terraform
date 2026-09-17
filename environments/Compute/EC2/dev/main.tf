module "ec2_module" {

source = "../../../../modules/Compute/EC2"
instance_count = var.instance_count
instance_name = var.instance_name
instance_type = var.instance_type
ami_id = var.ami_id
subnet_id = data.terraform_remote_state.vpc_backend.outputs.public_subnet_01_id
public_ip = var.public_ip
security_group_ids = [aws_security_group.allow_tls.id]
}