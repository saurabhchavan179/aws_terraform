module "s3_module" {
  source = "../../../../modules/storage/s3"

  bucket_name = var.bucket_name

  Environment = var.Environment
  bucket_tag = var.bucket_tag
}
