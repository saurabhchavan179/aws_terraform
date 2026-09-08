terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-april"
    key    = "Day-03/terraform.tfstate"
    region = "ap-south-1"
  }
}
