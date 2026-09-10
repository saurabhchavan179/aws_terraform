terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-april"
    key    = "Day-04/remote-provisiner/terraform.tfstate"
    region = "ap-south-1"
  }
}
