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
    598358 = {
      username     = "598358"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    562609 = {
      username     = "562609"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "William Hie"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    576198 = {
      username     = "576198"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    141577 = {
      username     = "141577"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550251"
      }
    }
    595422 = {
      username     = "595422"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    468354 = {
      username     = "468354"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Diwakar Chandramouli"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }

    596376 = {
      username     = "596376"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Tapas Bose"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    470112 = {
      username     = "470112"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Vutex"
        "User Manager" = "Joseph Limbrick"
        "Manager Dept" = "Toyota Motor Mfg_Texas_Inc"
        "Cost Center"  = "VU000"
      }
    }

    184472 = {
      username     = "184472"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Freddy Khan"
        "Manager Dept" = "Toyota Motor Mfg_Texas_Inc"
        "Cost Center"  = "955026"
      }
    }

    598439 = {
      username     = "598439"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Lynette Phillips"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }

    572734 = {
      username     = "572734"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Lynn Jahn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955114"
      }
    }

    564257 = {
      username     = "564257"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    462059 = {
      username     = "462059"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Christina McCarver"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }

    595928 = {
      username     = "595928"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }

    592948 = {
      username     = "592948"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    575557 = {
      username     = "575557"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    595717 = {
      username     = "595717"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    538159 = {
      username     = "538159"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Charlene Govender"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    521309 = {
      username     = "521309"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    591660 = {
      username     = "591660"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Travis Washington"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    578092 = {
      username     = "578092"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Max Tonsi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955074"
      }
    }

    581683 = {
      username     = "581683"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }

    581956 = {
      username     = "581956"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    570550 = {
      username     = "570550"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955006"
      }
    }

    583535 = {
      username     = "583535"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Abisoye Mudasiru"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    176149 = {
      username     = "176149"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Quin Smith"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }

    535238 = {
      username     = "535238"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Peter Amstutz"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }

    539993 = {
      username     = "539993"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "EDGYLABS"
        "User Manager" = "Terence Takeguchi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
      }
    }

    172833 = {
      username     = "172833"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    515225 = {
      username     = "515225"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    527317 = {
      username     = "527317"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }

    581035 = {
      username     = "581035"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955006"
      }
    }

    577696 = {
      username     = "577696"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    547205 = {
      username     = "547205"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    572580 = {
      username     = "572580"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Amyn Damania"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }

    559646 = {
      username     = "559646"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    551931 = {
      username     = "551931"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gregory Lyn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    151498 = {
      username     = "151498"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    513269 = {
      username     = "513269"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }

    595750 = {
      username     = "595750"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Michael Light"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }

    544388 = {
      username     = "544388"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955050"
      }
    }
    576095 = {
      username     = "576095"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    530406 = {
      username     = "530406"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mohan Ravi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    576854 = {
      username     = "576854"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    578088 = {
      username     = "578088"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Gopalakrishna Bhat"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }

    599957 = {
      username     = "599957"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Doug Sowers"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    591235 = {
      username     = "591235"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    545508 = {
      username     = "545508"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955004"
      }
    }

    402605 = {
      username     = "402605"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Brian Pryor"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "500001"
      }
    }

    599163 = {
      username     = "599163"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    579926 = {
      username     = "579926"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    559762 = {
      username     = "559762"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    573370 = {
      username     = "573370"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    585711 = {
      username     = "585711"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    594466 = {
      username     = "594466"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Sankhadeep Nath"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    556487 = {
      username     = "556487"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Bernardita Lejarde"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    527757 = {
      username     = "527757"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    599157 = {
      username     = "599157"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    586228 = {
      username     = "586228"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "CONNECTEDX"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    595842 = {
      username     = "595842"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    575560 = {
      username     = "575560"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Charlene Govender"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    578087 = {
      username     = "578087"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Gopalakrishna Bhat"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }

    588841 = {
      username     = "588841"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sridevi Nimmagadda"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    468990 = {
      username     = "468990"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Brian Kelly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }

    160701 = {
      username     = "160701"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Sooraj Raghav Srinivasan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "550262"
      }
    }

    149882 = {
      username     = "149882"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955115"
      }
    }

    588391 = {
      username     = "588391"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Sankhadeep Nath"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    580022 = {
      username     = "580022"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "CONNECTEDX"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    451791 = {
      username     = "451791"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Neelima Venreddy"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "322006"
      }
    }

    580013 = {
      username     = "580013"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave2set4"
  }
}
