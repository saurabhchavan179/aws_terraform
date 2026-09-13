terraform workspace new dev

terraform plan --var-file=dev.tfvars --auto-approve

terraform apply --var-file=dev.tfvars --auto-approve