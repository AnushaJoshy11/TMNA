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
  ws_users = {

     141827= {
      username             = "141827"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "TMNA"
      }
    }
     604056= {
      username             = "604056"
    }
     140093= {
      username             = "140093"
    }
     /*589673= {
      username             = "589673"
    }
     603809= {
      username             = "603809"
    }
     604956= {
      username             = "604956"
    }
  }*/



  ws_running_mode                   = "AUTO_STOP"
  ws_compute_type_name              = "PERFORMANCE"
  ws_bundle_id                      = "wsb-ddt6d2c7z"
  ws_directory_id                   = "d-9267b185c4"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key          = "arn:aws:kms:us-west-2:619771439766:key/36da15b4-514d-4479-8f7e-231bc8528b78"
  ws_tags = {
    "Persona"          = "IMS"
  }  
}
