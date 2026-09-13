terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-april"
    key    = "Dev-workspace/file-provisiner/terraform.tfstate"
    region = "ap-south-1"
  }
}
