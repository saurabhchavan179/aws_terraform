terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-april"
    key    = "networking/vpc/prod/terraform.tfstate"
    region = "ap-south-1"
  }
}
