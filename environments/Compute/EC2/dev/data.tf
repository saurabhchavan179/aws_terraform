data "terraform_remote_state" "vpc_backend" {
backend = "s3"

  config = {
    bucket = "terraform-remote-backend-april"
    key    = "networking/vpc/dev/terraform.tfstate"
    region = "ap-south-1"
  
  }
}
