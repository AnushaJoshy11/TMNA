terraform {
  source = "git@github.com:Toyota-Motor-North-America/awsw-daas-aws-modules.git//workspace?ref=master"
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

    606480 = {
      username     = "606480"
      tags = {
        "CW-Provider" = "LEADING TORCH LLC"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955088"
      }
    }
    577112 = {
      username     = "577112"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955071"
      }
    }
    606235 = {
      username     = "606235"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    606974 = {
      username     = "606974"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
     576460 = {
      username     = "576460"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955071"
      }
    }
     606482 = {
      username     = "606482"
      tags = {
        "CW-Provider" = "LEADING TORCH LLC"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955088"
      }
    }
     606661 = {
      username     = "606661"
      tags = {
        "CW-Provider" = "LEADING TORCH LLC"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955088"
      }
    }
    607103 = {
      username     = "607103"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955074"
      }
    }
     606113 = {
      username     = "606113"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955088"
      }
    }
    606114 = {
      username     = "606114"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955088"
      }
    }
    607205 = {
      username     = "607205"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955108"
      }
    }
     607090 = {
      username     = "607090"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Dennis Choy"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
     606973 = {
      username     = "606973"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955108"
      }
    }
     607108 = {
      username     = "607108"
      tags = {
        "CW-Provider" = "DIMIOUR LLC_FORMERLY VDART"
        "User Manager" = "Raji Dhanagar"
        "Manager Dept" = "TMS Product Planning Division"
        "Cost Center"  = "109002"
      }
    }
    
    }

  ws_running_mode = "ALWAYS_ON"
  ws_compute_type_name     = "POWER"
  ws_bundle_id    = "wsb-1rj4f26hh"
  ws_directory_id = "d-90678a5aff"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key = "arn:aws:kms:us-east-1:077387244011:key/5dc393d0-3b81-4589-bb3c-f87922b54456"
  ws_tags = {
    "Persona" = "developer"
    "git_module"       = "prod/us-east-1/prd/workspace_developer_set6"
  }
}
