terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-april"
    key    = "compute/ec2/dev/test/terraform.tfstate"
    region = "ap-south-1"
  }
}
