terraform {
  source = "git@github.com:Toyota-Motor-North-America/awsw-daas-aws-modules.git//workspace?ref=feature-daas"
}
 
include {
  path = find_in_parent_folders()
}
 
locals {
  global_vars      = read_terragrunt_config(find_in_parent_folders("global.hcl"))
  region_vars      = read_terragrunt_config(find_in_parent_folders("region.hcl"))
  environment_vars = read_terragrunt_config(find_in_parent_folders("environment.hcl"))
  name_prefix      = local.global_vars.locals.name_prefix
  environment      = local.environment_vars.locals.environment
  aws_region_cd    = local.region_vars.locals.aws_region_cd
  application_name = local.global_vars.locals.application_name
  aws_region       = local.region_vars.locals.aws_region
 
}
inputs = {
 
  # Workspace variable values
  ws_users = {
 
    457848 = {
      username     = "457848"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
      }
    }
     604056 = {
      username     = "604056"
      }
    
    580817= {
      username     = "580817"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
      }
    }
      
  }

  ws_running_mode = "ALWAYS_ON"
  ws_compute_type_name     = "POWER"
  ws_bundle_id    = "wsb-ggr1pjk32"
  ws_directory_id = "d-90678a5aff"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key = "arn:aws:kms:us-east-1:077387244011:key/5dc393d0-3b81-4589-bb3c-f87922b54456"
  ws_tags = {
    "Persona" = "developer"
    "tmna:environment" = "prod"
    "tmna:app-name"    = "Chofer NucleusStream"
    "tmna:app-id"      = "APM0005548"
    "tmna:git_url"     = "ssh://git@github.com:Toyota-Motor-North-America/awsw-daas-aws-infra-live.git"
  }
}
