terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-april"
    key    = "Day-04/file-provisiner/terraform.tfstate"
    region = "ap-south-1"
  }
}
