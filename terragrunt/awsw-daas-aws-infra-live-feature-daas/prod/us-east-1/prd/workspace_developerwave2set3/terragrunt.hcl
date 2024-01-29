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

    159347 = {
      username = "159347"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gregory Lyn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    531960 = {
      username = "531960"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    596315 = {
      username = "596315"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    596367 = {
      username     = "596367"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Ram N"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    588154 = {
      username = "588154"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    601273 = {
      username     = "601273"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    580814 = {
      username = "580814"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    174111 = {
      username = "174111"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    555743 = {
      username     = "555743"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Clearpath"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    576869 = {
      username     = "576869"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "AIUTTechnologyInc"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    546060 = {
      username = "546060"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mark Morris"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    547790 = {
      username     = "547790"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "AutoGuide Mobile Robots"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    593812 = {
      username     = "593812"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    543229 = {
      username = "543229"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    557301 = {
      username     = "557301"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "CISCOSYSTEMSCAPITALCORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    575652 = {
      username     = "575652"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Terence Takeguchi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
      }
    }
    184321 = {
      username = "184321"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "500001"
      }
    }
    551681 = {
      username = "551681"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Min Hu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    460314 = {
      username = "460314"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    465046 = {
      username = "465046"
      tags = {
        "CW-Provider" = "EnterpriseVisionTechnology"
        "User Manager" = "Phil Reuter"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    577688 = {
      username     = "577688"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "VDART"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    522767 = {
      username = "522767"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    175465 = {
      username = "175465"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Brian Kelly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }
    569942 = {
      username     = "569942"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sriram Thiruvenkatam"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    405649 = {
      username     = "405649"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    589867 = {
      username     = "589867"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    532467 = {
      username = "532467"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    600354 = {
      username     = "600354"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    525398 = {
      username = "525398"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Stella Santiago"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }
    144064 = {
      username = "144064"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Debbie Fournier"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    589318 = {
      username = "589318"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    554109 = {
      username = "554109"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    581515 = {
      username = "581515"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Matt Brown"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    534181 = {
      username = "534181"
      tags = {
        "CW-Provider"  = "HaasDesign"
        "User Manager" = "Tom Hood"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956619"
      }
    }
    555305 = {
      username     = "555305"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE_TOUCHELLP"
        "User Manager" = "Andrew Hollander"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    578732 = {
      username = "578732"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    579400 = {
      username = "579400"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    509858 = {
      username = "509858"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    586973 = {
      username     = "586973"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sandeep Dhanuk"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    585686 = {
      username     = "585686"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    569108 = {
      username     = "569108"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Alejandra Toussaint"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    161538 = {
      username     = "161538"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    580896 = {
      username = "580896"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
    575500 = {
      username     = "575500"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    592818 = {
      username = "592818"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    594543 = {
      username = "594543"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Charlene Govender"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    599428 = {
      username = "599428"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    555709 = {
      username     = "555709"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Clearpath"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    450300 = {
      username = "450300"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    461306 = {
      username     = "461306"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955004"
      }
    }
    179136 = {
      username     = "179136"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550020"
      }
    }

    575139 = {
      username     = "575139"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Gabriel Pagan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955065"
      }
    }

    569954 = {
      username     = "569954"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "124005"
      }
    }

    540620 = {
      username     = "540620"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mark Morris"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    554515 = {
      username     = "554515"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    527794 = {
      username     = "527794"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    449648 = {
      username     = "449648"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mark Derickson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    588153 = {
      username     = "588153"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    417994 = {
      username     = "417994"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Andrew Pham"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"

      }
    }

    575680 = {
      username     = "575680"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    577701 = {
      username     = "577701"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    582249 = {
      username     = "582249"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    578054 = {
      username     = "578054"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }

    597839 = {
      username     = "597839"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Michael Babiak"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    551539 = {
      username     = "551539"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
      }
    }
    585306 = {
      username     = "585306"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mike Mora"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    566369 = {
      username     = "566369"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Dennis Choy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    593878 = {
      username     = "593878"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    545011 = {
      username     = "545011"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955063"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave2set3"
  }
}
