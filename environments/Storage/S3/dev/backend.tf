terraform {
  backend "s3" {
    bucket = "terraform-remote-backend-april"
    key    = "Storage/S3/dev/test/terraform.tfstate"
    region = "ap-south-1"
  }
}
