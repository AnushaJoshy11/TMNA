
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

    596128 = {
      username = "596128"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Jamie McLaren"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    601620 = {
      username = "601620"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Jordan MacIntyre"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    581584 = {
      username = "581584"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    553400 = {
      username = "553400"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Min Hu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    574503 = {
      username = "574503"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Stella Santiago"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }
    405771 = {
      username = "405771"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Neelima Venreddy"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "322006"
      }
    }
    557345 = {
      username = "557345"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jolene Mawson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    541580 = {
      username = "541580"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Pradeep Parvataneni"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    525675 = {
      username = "525675"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    516534 = {
      username = "516534"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    574211 = {
      username = "574211"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gregory Lyn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    432326 = {
      username = "432326"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "William Hie"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550251"
      }
    }
    #Autostop
    171987 = {
      username = "171987"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    575046 = {
      username = "575046"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Gopalakrishna Bhat"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    547177 = {
      username = "547177"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ORANGEPEOPLE"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    583746 = {
      username = "583746"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Gopalakrishna Bhat"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }

    585210 = {
      username = "585210"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    603761 = {
      username = "603761"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955040"
      }
    }

    419496 = {
      username = "419496"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }

    602293 = {
      username = "602293"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    564587 = {
      username = "564587"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }

    595912 = {
      username = "595912"
      "running_mode" = "AUTO_STOP"      
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    595719 = {
      username = "595719"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    559564 = {
      username = "559564"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "JKLTechnologies"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955018"
      }
    }

    596390 = {
      username = "596390"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    568909 = {
      username = "568909"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    595923 = {
      username = "595923"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }

    586505 = {
      username = "586505"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955044"
      }
    }

    602273 = {
      username = "602273"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    603222 = {
      username = "603222"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Bernardita Lejarde"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    551387 = {
      username = "551387"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Angela Murthil"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    582443 = {
      username = "582443"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE"
        "User Manager" = "Matt Brown"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }

    602984 = {
      username = "602984"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    602686 = {
      username = "602686"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    591232 = {
      username = "591232"
      "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    598386 = {
      username = "598386"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ORANGEPEOPLE"
        "User Manager" = "Steve Berry"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }

    603460 = {
      username = "603460"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }

    602294 = {
      username = "602294"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions  "
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955040"
      }
    }

    564873 = {
      username = "564873"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }

    403452 = {
      username = "403452"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jolene Mawson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    528617 = {
      username = "528617"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }

    566429 = {
      username = "566429"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Rajesh Chathapuram"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "996092"
      }
    }

    601423 = {
      username = "601423"
     "running_mode" = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set6"
  }
}
