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

    580802 = {
      username     = "580802"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    425857 = {
      username     = "425857"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "TMNA"
        "User Manager"   = "Jayme Dalzell"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"
      }
    }
    599511 = {
      username     = "599511"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "McKinseyconsulting"
        "User Manager"   = "George Whitehouse"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "201007"
      }
    }
    566531 = {
      username     = "566531"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    519053 = {
      username     = "519053"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"
      }
    }
    420947 = {
      username     = "420947"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "PARIVEDASOLUTIONS"
        "User Manager"   = "Mike Tromans"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955011"
      }
    }
    585779 = {
      username     = "585779"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "William Hie"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    601361 = {
      username     = "601361"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "TopTalentResourcesLLC"
        "User Manager"   = "Amit Chaudhary"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    414967 = {
      username     = "414967"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955068"
      }
    }
    561909 = {
      username     = "561909"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Mitch Aubin"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    580803 = {
      username     = "580803"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    179641 = {
      username     = "179641"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Andrew Pham"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    101225 = {
      username     = "101225"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "TMNA"
        "User Manager"   = "Zakir Mohammed"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955019"
      }
    }
    535340 = {
      username     = "535340"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager"   = "Michael Light"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955043"
      }
    }
    589320 = {
      username     = "589320"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Mitch Aubin"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    597016 = {
      username     = "597016"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    600815 = {
      username     = "600815"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "CONNECTEDX"
        "User Manager"   = "Gupta Wijeratne"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955088"
      }
    }
    602137 = {
      username     = "602137"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "CISCOSYSTEMSCAPITALCORP"
        "User Manager"   = "Max Hernandez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    516501 = {
      username     = "516501"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    464544 = {
      username     = "464544"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "StefaniniInc"
        "User Manager"   = "James Tu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955101"
      }
    }
    577826 = {
      username     = "577826"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    453189 = {
      username     = "453189"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955023"
      }
    }
    602277 = {
      username     = "602277"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    573160 = {
      username     = "573160"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Angela Murthil"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    595716 = {
      username     = "595716"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Brian Lieberson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"
      }
    }
    428189 = {
      username     = "428189"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "TMNA"
        "User Manager"   = "Abhishek Sharma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955011"
      }
    }
    582037 = {
      username     = "582037"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Mahesh Jaddangi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    591231 = {
      username     = "591231"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Gopalakrishna Bhat"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955002"
      }
    }
    595712 = {
      username     = "595712"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Srinivas Prasad"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    538940 = {
      username     = "538940"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Sybil Sheppard-Deyell"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    559791 = {
      username     = "559791"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "PARIVEDASOLUTIONS"
        "User Manager"   = "Sooraj Raghav Srinivasan"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    578848 = {
      username     = "578848"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    585561 = {
      username     = "585561"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }
    588321 = {
      username     = "588321"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "CISCOSYSTEMSCAPITALCORP"
        "User Manager"   = "Max Hernandez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"
      }
    }
    603230 = {
      username     = "603230"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Ram Kurapati"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    443308 = {
      username     = "443308"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Vutex"
        "User Manager"   = "Joseph Limbrick"
        "Manager Dept"   = "Toyota Motor Mfg_Texas_Inc"
        "Cost Center"    = "WC000"
      }
    }
    603229 = {
      username     = "603229"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Ram Kurapati"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    422196 = {
      username     = "422196"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Sooraj Raghav Srinivasan"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    556858 = {
      username     = "556858"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Alejandra Toussaint"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }
    571892 = {
      username     = "571892"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Viswaraj Thamma"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    589013 = {
      username     = "589013"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Tom Miller"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955085"
      }
    }
    523890 = {
      username     = "523890"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Tom Miller"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955085"
      }
    }
    542043 = {
      username     = "542043"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Tom Miller"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"
      }
    }
    546939 = {
      username     = "546939"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"
      }
    }
    587316 = {
      username     = "587316"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Lisa Varas"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }
    589932 = {
      username     = "589932"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "ACCENTURE"
        "User Manager"   = "Quin Smith"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "956518"
      }
    }
    541634 = {
      username     = "541634"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Salima Rizvi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }
    576209 = {
      username     = "576209"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"
      }
    }
    138354 = {
      username     = "138354"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Andrew Pham"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
    }
    405671 = {
      username     = "405671"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Pradeep Parvataneni"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "550251"
      }
    }
    461963 = {
      username     = "461963"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "PERFICIENT_INC"
        "User Manager"   = "Leslie Nessim"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955068"
      }
    }
    571423 = {
      username     = "571423"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Peter Amstutz"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955072"
      }
    }
    555515 = {
      username     = "555515"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Sybil Sheppard-Deyell"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    582646 = {
      username     = "582646"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Tim Hugo"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"
      }
    }
    570109 = {
      username     = "570109"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "Srinivas Prasad"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "124005"
      }
    }
    598233 = {
      username     = "598233"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Salima Rizvi"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955074"
      }
    }
    549701 = {
      username     = "549701"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "DELOITTE_TOUCHELLP"
        "User Manager"   = "Andrew Hollander"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955023"
      }
    }
    603209 = {
      username     = "603209"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Gregory Lyn"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955108"
      }
    }
    545510 = {
      username     = "545510"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "ASCENTTBusinessSolutions"
        "User Manager"   = "Koteswar Rangaraju"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955004"
      }
    }
    181901 = {
      username     = "181901"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "William Hie"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "550251"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave2_set7"
  }
}
