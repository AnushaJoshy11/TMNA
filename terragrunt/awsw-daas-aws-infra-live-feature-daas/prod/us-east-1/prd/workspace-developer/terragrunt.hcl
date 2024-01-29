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

    # pilot users
    569747= {
      username  = "569747"
      bundle_id = "wsb-ggr1pjk32"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Gregory Lyn"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955108"
      }
    }
    173303= {
      username  = "173303"
      bundle_id = "wsb-ggr1pjk32"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Mark Morris"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955088"
      }
    }
    576823= {
      username  = "576823"
      bundle_id = "wsb-ggr1pjk32"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Sarkis Nalchadjian"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955006"
      }
    }
    564364= {
      username  = "564364"
      bundle_id = "wsb-ggr1pjk32"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Daniel Hibbard"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955005"
      }
    }
    585680= {
      username  = "585680"
      bundle_id = "wsb-ggr1pjk32"
      tags = {
        "CW-Provider"     = "LEADINGTORCHLLC"
        "User Manager"    = "Mary Holloway"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955088"
      }
    }
    582915= {
      username  = "582915"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"    = "Stella Santiago"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003"
      }
    }
    602710= {
      username  = "602710"
      bundle_id = "wsb-ggr1pjk32"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "MINDTREE LTD"
        "User Manager"    = "Lakshmi Pendyala"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955114"
      }
    }
    575550= {
      username  = "575550"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "FIVE_DONELLC"
        "User Manager"    = "Samuel Fusco"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955043"
      }
    }
    596361= {
      username  = "596361"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Jai Kumar Dhanasekar"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
      }
    }
    535240= {
      username  = "535240"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Lauren Drew"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955072"
      }
    }
    461845= {
      username  = "461845"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Gupta Wijeratne"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "956610"
      }
    }
    581768= {
      username  = "581768"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Mohan Ravi"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955005"
      }
    }
    457684= {
      username  = "457684"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Sarkis Nalchadjian"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955108"
      }
    }
    599165= {
      username  = "599165"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Gupta Wijeratne"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955088"
      }
    }
    580375= {
      username  = "580375"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Doug Sowers"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041" 
      }
    }
    600810= {
      username  = "600810"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Sarkis Nalchadjian"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955043"
      }
    }
    525397= {
      username  = "525397"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Stella Santiago"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003"
      }
    }
    007732= {
      username  = "007732"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TNMA"
        "User Manager"    = "N/A"
        "Manager Dept"    = "N/A"
        "Cost Center"     = "N/A"
      }
    }
    535303= {
      username  = "535303"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "CISCOSYSTEMSCAPITALCORP"
        "User Manager"    = "Max Hernandez"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }


    403275= {
      username  = "403275"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Michael Babiak"
        "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
        "Cost Center"     = "550251"
      }
    }

    585016= {
      username  = "585016"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "LEADINGTORCHLLC"
        "User Manager"    = "Lauren Drew"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955074"
      }
    }
    581691= {
      username  = "581691"
      bundle_id = "wsb-ggr1pjk32"
      root_volume_size_gib = 175
      user_volume_size_gib = 100
      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Wayne Mattingly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    602536= {
      username  = "602536"
      bundle_id = "wsb-ggr1pjk32"
      tags = {
        "CW-Provider"     = "MINDTREE LTD"
        "User Manager"    = "Ben Takahashi"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955113"
      }
    }
    601252= {
      username  = "601252"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "IBM CORP"
        "User Manager"    = "Rohit Kalyanshetti"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955109"
      }
    }
    550526= {
      username  = "550526"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Stella Santiago"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003" 
      }
    }
    532625= {
      username  = "532625"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Stella Santiago"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955003"
      }
    }
    561158= {
      username  = "561158"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Mary Armstrong"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955068"
      }
    }
    143767= {
      username  = "143767"
      bundle_id = "wsb-ggr1pjk32"

      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Lauren Drew"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955074"
      }
    }
    601947= {
      username  = "601947"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP"
        "User Manager"    = "Srinivas Prasad"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955109"
      }
    }
    598458= {
      username  = "598458"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ASCENTTBusinessSolutions"
        "User Manager"    = "Cliff Bussell"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955005"
      }
    }
    600445= {
      username  = "600445"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ONENECKITSOLUTIONS"
        "User Manager"    = "Max Hernandez"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955018"
      }
    }
    518352= {
      username  = "518352"
      bundle_id = "wsb-ggr1pjk32"

      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TMCBUSINESSPARTNER_Affiliate"
        "User Manager"    = "Craig Vincek"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    400251= {
      username  = "400251"
      bundle_id = "wsb-ggr1pjk32"
      tags = {
        "CW-Provider"     = "TRACE 3 INC"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
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
    "git_module" = "prod/us-east-1/prd/workspace-developer"
  }
}
