# Set account-wide variables. These are automatically pulled in to configure the remote state bucket in the root
# terragrunt.hcl configuration.
locals {
  aws_account_id = "619771439766"
  account_type   = "nonprod" # NO NEED TO MODIFY
}
