terraform workspace new qa

terraform plan --var-file=qa.tfvars --auto-approve

terraform apply --var-file=qa.tfvars --auto-approve