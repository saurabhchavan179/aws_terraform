terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-april"
    key    = "Day-04/local-provisiner/terraform.tfstate"
    region = "ap-south-1"
  }
}
