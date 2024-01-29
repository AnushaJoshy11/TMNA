# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  aws_account_id = "375924554561"
  account_type   = "prod" # NO NEED TO MODIFY
}
