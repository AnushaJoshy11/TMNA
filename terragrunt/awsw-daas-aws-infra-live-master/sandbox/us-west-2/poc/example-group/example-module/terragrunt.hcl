# ---------------------------------------------------------------------------------------------------------------------
# ENVIRONMENT VARIABLES
# Define these secrets as environment variables
# In a bash command prompt, use the command: export VARIABLE="value"
# ---------------------------------------------------------------------------------------------------------------------

# AWS_PROFILE
# TERRAGRUNT_DOWNLOAD

# ---------------------------------------------------------------------------------------------------------------------
# TERRAGRUNT CONFIGURATION
# This is the configuration for Terragrunt, a thin wrapper for Terraform that supports locking and enforces best
# practices: https://github.com/gruntwork-io/terragrunt
# ---------------------------------------------------------------------------------------------------------------------

# Terragrunt will copy the Terraform configurations specified by the source parameter, along with any files in the
# working directory, into a temporary folder, and execute your Terraform commands in that folder.
terraform {
  # EXAMPLE SOURCE
  # source = "git::git@github.com:Toyota-Motor-North-America/ace-aws-infra-modules.git//compute/ecs/cluster?ref=compute-ecs-v2.2.0"
}

# Include all settings from the root terragrunt.hcl file
include {
  path = find_in_parent_folders()
}

# When using the terragrunt xxx-all commands (e.g., apply-all, plan-all), deploy these dependencies before this module. Please see https://terragrunt.gruntwork.io/docs/reference/config-blocks-and-attributes/#dependency for more details
# dependencies {
#   paths = [
#     "../../mgmt/vpc",
#   ]
# }

# When using an output of another module as an input for this module, specify the dependency, as per https://terragrunt.gruntwork.io/docs/reference/config-blocks-and-attributes/#dependency
# dependency "name" {
#   config_path = "${get_terragrunt_dir()}/../module"
# }
# Example use of dependency value:
# variable = dependency.name.outputs.output-value-name

# Local variables
# Pull required parameters set in the parameter files of this relative path to be used as values.
locals {
  global_vars      = read_terragrunt_config(find_in_parent_folders("global.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  environment_vars = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  name_prefix      = local.global_vars.locals.name_prefix
  environment      = local.environment_vars.locals.environment
  aws_region_cd    = local.region_vars.locals.aws_region_cd
}

# ---------------------------------------------------------------------------------------------------------------------
# MODULE PARAMETERS
# These are the variables we have to pass in to use the module specified in the terragrunt configuration above
# ---------------------------------------------------------------------------------------------------------------------

inputs = {
  cluster_name = "${local.name_prefix}-mycluster"
  created_by_email = "responsible.name@toyota.com"
}
