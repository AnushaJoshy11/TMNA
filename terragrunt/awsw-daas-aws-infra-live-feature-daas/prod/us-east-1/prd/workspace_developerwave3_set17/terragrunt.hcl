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

    599639 = {
      username     = "599639"
      running_mode         = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "InfosysLimited"
        "User Manager"   = "Amit Chaudhary"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
     549772   = {
      username     = "549772"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "TMN Toyota Motor North America"
        "Manager Dept"   = "Oakley Higgins"
        "Cost Center"    = "955026"
      }
    }
     526573   = {
      username     = "526573"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
     529799   = {
      username     = "529799"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Michael Gutierrez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
       581698= {
      username     = "581698"
      tags = {
        "CW-Provider"    = "TMN Toyota Motor North America"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "InfosysLimited"
        "Cost Center"    = "955026"
      }
    }
    581674   = {
      username     = "581674"
      tags = {
        "CW-Provider"    = "TMN Toyota Motor North America"
        "User Manager"   = "Wayne Mattingly"
        "Manager Dept"   = "InfosysLimited"
        "Cost Center"    = "955042"
      }
    }
    598459  = {
      username       = "598459"
      running_mode   = "AUTO_STOP"
      tags = {
        "CW-Provider"    = "TMN Toyota Motor North America"
        "User Manager"   = "Koteswar Rangaraju"
        "Manager Dept"   = "ASCENTTBusinessSolutions"
        "Cost Center"    = "955005"
      }
    }
     549687   = {
      username     = "549687"
      tags = {
        "CW-Provider"    = "TMN Toyota Motor North America"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "InfosysLimited"
        "Cost Center"    = "955071"
      }
    }
    582385    = {
      username     = "582385"
      tags = {
        "CW-Provider"    = "TMN Toyota Motor North America"
        "User Manager"   = "Stella Santiago"
        "Manager Dept"   = "InfosysLimited"
        "Cost Center"    = "955003"
      }
    }
     605625      = {
      username     = "605625"
      tags = {
        "CW-Provider"    = "ACCENTURE"
        "User Manager"   = "Trong Nguyen"
        "Manager Dept"   = "TMNA Human Resources Division"
        "Cost Center"    = "956518"
      }
    }
    604670   = {
      username     = "604670"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMNA OneTech Division"
        "Cost Center"    = "955109"
      }
    }
     606134      = {
      username     = "606134"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMNA OneTech Division"
        "Cost Center"    = "955046"
      }
    }
     606135      = {
      username     = "606135"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMNA OneTech Division"
        "Cost Center"    = "955046"
      }
    }
     606117      = {
      username     = "606117"
      tags = {
        "CW-Provider"    = "Infosys Limited"
        "User Manager"   = "Selva Nagarajan"
        "Manager Dept"   = "TMNA OneTech Division"
        "Cost Center"    = "955109"
      }
    }
     605188      = {
      username     = "605188"
      tags = {
        "CW-Provider"    = "Infosys Limited"
        "User Manager"   = "Uday Jullapally"
        "Manager Dept"   = "TMNA OneTech Division"
        "Cost Center"    = "955109"
      }
    }
    513564     = {
      username     = "513564"
      tags = {
        "CW-Provider"    = "Bastian Automated Vehicles"
        "User Manager"   = "Jamie Plummer"
        "Manager Dept"   = "TMNA OneTech Division"
        "Cost Center"    = "955026"
      }
    }
     606362      = {
      username     = "606362"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Geoff Ranson"
        "Manager Dept"   = "TNA Production Engineering Division"
        "Cost Center"    = "EMP12"
      }
    }
     599494      = {
      username     = "599494"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Selva Nagarajan"
        "Manager Dept"   = "TMNA OneTech Division"
        "Cost Center"    = "955109"
      }
    }
     598905      = {
      username     = "598905"
      tags = {
        "CW-Provider"    = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Selva Nagarajan"
        "Manager Dept"   = "TMNA OneTech Division"
        "Cost Center"    = "955109"
      }
    }
     407064      = {
      username     = "407064"
      tags = {
        "CW-Provider"    = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMS Information Systems Division"
        "Cost Center"    = "550100"
      }
    }

      606392= {
      username     = "606392"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ACCENTURE"
        "User Manager"    = "Quin Smith"
        "Manager Dept"    = "TMNA Human Resources Division"
        "Cost Center"     = "956518"
      }
    }

      606009= {
        username     = "606009"
        running_mode = "AUTO_STOP"
        tags = {
          "CW-Provider"     = "CHIME SOLUTIONS"
          "User Manager"    = "Aaron Jones"
          "Manager Dept"    = "TMS Toyota Corporate Division"
          "Cost Center"     = "322003"
        }
    }

       606221= {
        username     = "606221"
        tags = {
          "CW-Provider"     = "DELOITTE CONSULTING LLP"
          "User Manager"    = "Rekha Singh"
          "Manager Dept"    = "TM OneTech Division"
          "Cost Center"     = "955109"
        }
    }
    554776= {
        username     = "554776"
        running_mode = "AUTO_STOP"
        tags = {
          "CW-Provider"     = "PERFICIENT_INC"
          "User Manager"    = "Srini Bhupathiraju"
          "Manager Dept"    = "TM OneTech Division"
          "Cost Center"     = "955115"
        }
    }
       606221= {
        username     = "606221"
        tags = {
          "CW-Provider"     = "DELOITTE CONSULTING LLP"
          "User Manager"    = "Rekha Singh"
          "Manager Dept"    = "TMNA OneTech Division"
          "Cost Center"     = "955109"
        }
    }
 }

   ws_running_mode                   = "ALWAYS_ON"
  ws_compute_type_name              = "POWER"
  ws_bundle_id                      = "wsb-1rj4f26hh"
  ws_directory_id                   = "d-90678a5aff"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key          = "arn:aws:kms:us-east-1:077387244011:key/5dc393d0-3b81-4589-bb3c-f87922b54456"
  ws_tags = {
    "Persona"    = "developer"
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set17"
 
  }
}
  
