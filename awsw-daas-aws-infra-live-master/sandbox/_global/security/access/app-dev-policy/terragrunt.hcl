# ---------------------------------------------------------------------------------------------------------------------
# MODULE VARIABLES
# Define these paramater values as inputs.
# ---------------------------------------------------------------------------------------------------------------------

## Manage an existing role policy in the Terraform state by importing the policy

## Note: this is an example and should contain the actual ARN of the policy targeted to import
# terragrunt import aws_iam_policy.app-custom-policy arn:aws:iam::${var.aws_account_id}:policy/${var.name_prefix}-dev-policy

terraform {
  # Example version reference: ?ref=v1.0.0 --> Update the source to the latest tagged version
  source = "git::git@github.com:Toyota-Motor-North-America/ace-aws-infra-modules.git//security/access/app-custom-policy?ref=master"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

# Local variables
locals {
  global_vars = read_terragrunt_config(find_in_parent_folders("global.hcl"))
  name_prefix = local.global_vars.locals.name_prefix
}

# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# These are the variables we have to pass in to use the module specified in the terragrunt configuration above
# ---------------------------------------------------------------------------------------------------------------------

inputs = {
  app_custom_role_name_prefix = local.name_prefix
  custom_permitted_services = [
    "cloudwatch:Describe*", 
    "cloudwatch:List*"
  ]
  custom_permitted_resources = ["*"]
  custom_denied_services = [
    "cloudwatch:Delete*", 
    "cloudwatch:DisableAlarmActions"
  ]
  custom_denied_resources = ["*"]
}
