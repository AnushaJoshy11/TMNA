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
    # wave 2

    582206 = {
      username     = "582206"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    440480 = {
      username     = "440480"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Diwakar Chandramouli"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "500001"
      }
    }
    450597 = {
      username     = "450597"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Jose Carrasco"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550251"
      }
    }
    557862 = {
      username     = "557862"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "VDART"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    571424 = {
      username     = "571424"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Peter Amstutz"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }
    558701 = {
      username     = "558701"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
      }
    }
    560821 = {
      username     = "560821"
     running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Sooraj Raghav Srinivasan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    143932 = {
      username     = "143932"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Charlene Govender"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    601882 = {
      username     = "601882"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955040"
      }
    }
    587514 = {
      username     = "587514"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    433808 = {
      username     = "433808"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Viswaraj Thamma"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550017"
      }
    }
    581777 = {
      username     = "581777"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Naresh Kalimuthu"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    599004 = {
      username     = "599004"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Viswaraj Thamma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    575619 = {
      username     = "575619"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager" = "Mahesh Jaddangi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    564384 = {
      username     = "564384"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    578845 = {
      username     = "578845"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    596377 = {
      username     = "596377"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    558203 = {
      username     = "558203"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Michael Light"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    560636 = {
      username     = "560636"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Mitch Aubin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    569798 = {
      username     = "569798"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
   445969 = {
      username     = "445969"
      bundle_id    = "wsb-vzxhr8gvb"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Shashi Suvarna"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    564868 = {
      username     = "564868"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    571766 = {
      username     = "571766"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    600053 = {
      username     = "600053"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    552018 = {
      username     = "552018"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager" = "Alejandra Toussaint"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    600649 = {
      username     = "600649"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955025"
      }
    }
    149358 = {
      username     = "149358"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    540155 = {
      username     = "540155"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "ONENECKITSOLUTIONS"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    412897 = {
      username     = "412897"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    539301 = {
      username     = "539301"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager" = "Rajesh Chathapuram"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    573159 = {
      username     = "573159"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Andrew Pham"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    428000 = {
      username     = "428000"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Angela Murthil"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955065"
      }
    }
    589464 = {
      username     = "589464"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    574384 = {
      username     = "574384"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "ACCENTURE"
        "User Manager" = "Christina McCarver"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    585568 = {
      username     = "585568"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
    580179 = {
      username     = "580179"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager" = "Mahesh Jaddangi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    580237 = {
      username     = "580237"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    602974 = {
      username     = "602974"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    602047 = {
      username     = "602047"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "CISCOSYSTEMSCAPITALCORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    409422 = {
      username     = "409422"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }
    588754 = {
      username     = "588754"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Viswaraj Thamma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    404888 = {
      username     = "404888"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "NA"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "NA"
      }
    }
    470714 = {
      username     = "470714"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager" = "Rajesh Chathapuram"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955075"
      }
    }
    574407 = {
      username     = "574407"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    471767 = {
      username     = "471767"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    563288 = {
      username     = "563288"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955063"
      }
    }
    573413 = {
      username     = "573413"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Mustafa Elmas"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }
    600230 = {
      username     = "600230"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "TMNA"
        "User Manager" = "Kamal Distell"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955000"
      }
    }
    533774 = {
      username     = "533774"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Viswaraj Thamma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    515226 = {
      username     = "515226"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "NA"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "NA"
      }
    }
    598792 = {
      username     = "598792"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Mitch Aubin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    160573 = {
      username     = "160573"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Rohit Kalyanshetti"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    586160 = {
      username     = "586160"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager" = "Gopalakrishna Bhat"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    582409 = {
      username     = "582409"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    599143 = {
      username     = "599143"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    544008 = {
      username     = "544008"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    573790 = {
      username     = "573790"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Smail Haddad"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave2_set8"
  }
}
