# ---------------------------------------------------------------------------------------------------------------------
# NO NEED TO MODIFY THIS FILE
# ---------------------------------------------------------------------------------------------------------------------

# ---------------------------------------------------------------------------------------------------------------------
# TERRAGRUNT CONFIGURATION
# Terragrunt is a thin wrapper for Terraform that provides extra tools for working with multiple Terraform modules,
# remote state, and locking: https://github.com/gruntwork-io/terragrunt
# ---------------------------------------------------------------------------------------------------------------------

locals {
  global_vars                   = read_terragrunt_config(find_in_parent_folders("global.hcl"))
  account_vars                  = read_terragrunt_config(find_in_parent_folders("account.hcl"))
  region_vars                   = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  environment_vars              = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  aws_account_id                = local.account_vars.locals.aws_account_id
  account_type                  = local.account_vars.locals.account_type
  name_prefix                   = replace(local.global_vars.locals.name_prefix, "_", "-")
  aws_region                    = local.region_vars.locals.aws_region
  aws_region_cd                 = local.region_vars.locals.aws_region_cd
  terraform_state_s3_bucket     = "${local.name_prefix}-${local.account_type}-${local.aws_region_cd}-sb-infra-live-tfstate"
  terraform_lock_dynamodb_table = "terraform-locks"
}

# Generate an AWS provider block
generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
provider "aws" {
  region = "${local.aws_region}"
  allowed_account_ids = ["${local.aws_account_id}"]
}
EOF
}

# Configure Terragrunt to automatically store tfstate files in an S3 bucket
remote_state {
  backend = "s3"
  config = {
    encrypt        = true
    bucket         = local.terraform_state_s3_bucket
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = local.aws_region
    dynamodb_table = local.terraform_lock_dynamodb_table
  }
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
}

# ---------------------------------------------------------------------------------------------------------------------
# GLOBAL PARAMETERS
# These variables apply to all configurations in this subfolder. These are automatically merged into the child
# `terragrunt.hcl` config via the include block.
# ---------------------------------------------------------------------------------------------------------------------

# Configure root level variables that all resources can inherit to help you keep often-repeated variables 
# (e.g., account ID) DRY. This is especially helpful with multi-account configs where terraform_remote_state data
# sources are placed directly into the modules.
inputs = merge( 
  local.global_vars.locals,
  local.account_vars.locals,
  local.region_vars.locals,
  local.environment_vars.locals
)