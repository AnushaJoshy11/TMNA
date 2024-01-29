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
    /*579329 = {
      username = "579329"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    403275 = {
      username = "403275"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    594369 = {
      username = "594369"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    580278 = {
      username = "580278"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    405312 = {
      username     = "405312"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    465051 = {
      username = "465051"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    579327 = {
      username = "579327"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    581311 = {
      username = "581311"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    576197 = {
      username = "576197"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    586209 = {
      username = "586209"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    595398 = {
      username = "595398"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    581442 = {
      username = "581442"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }

    582409 = {
      username     = "582409"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }*/

    581691 = {
      username = "581691"
      tags = {
        "CW-Provider" = "InfosysLimited"
      }
    }
  }

  ws_running_mode                   = "ALWAYS_ON"
  ws_compute_type_name              = "POWER"
  ws_bundle_id                      = "wsb-bv627vj40"
  ws_directory_id                   = "d-9267b185c4"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key          = "arn:aws:kms:us-west-2:619771439766:key/36da15b4-514d-4479-8f7e-231bc8528b78"
  ws_tags = {
    "Persona"          = "developer"
  }
}
