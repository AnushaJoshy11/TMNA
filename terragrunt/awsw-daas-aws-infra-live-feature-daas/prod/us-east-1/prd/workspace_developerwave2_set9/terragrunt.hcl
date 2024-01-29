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

    
600431 = {
      username     = "600431"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "CISCOSYSTEMSCAPITALCORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955018"
      }
    }
    552512 = {
      username = "552512"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    590575 = {
      username = "590575"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Kimberly Gonzales"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    458821 = {
      username     = "458821"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mary Holloway"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    546582 = {
      username = "546582"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Kishore Jonnalagedda"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    571422 = {
      username = "571422"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Mitch Aubin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    584017 = {
      username = "584017"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955004"
      }
    }
    569819 = {
      username     = "569819"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    594835 = {
      username = "594835"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
    580903 = {
      username = "580903"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    582009 = {
      username     = "582009"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    603223 = {
      username     = "603223"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Chris Crotts"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    449455 = {
      username = "449455"
      tags = {
        "CW-Provider"  = "DELOITTE_TOUCHELLP"
        "User Manager" = "Marshall Dempsey"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    597161 = {
      username = "597161"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Tapas Bose"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    580961 = {
      username = "580961"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "NA"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "NA"
      }
    }
    547187 = {
      username = "547187"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    600035 = {
      username     = "600035"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    571605 = {
      username = "571605"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Akhila Guntur"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    554516 = {
      username     = "554516"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sooraj Raghav Srinivasan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    178472 = {
      username = "178472"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    527909 = {
      username = "527909"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Charlene Govender"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955044"
      }
    }
    569754 = {
      username = "569754"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Bernardita Lejarde"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    509992 = {
      username     = "509992"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    584510 = {
      username     = "584510"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Angela Murthil"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
    417787 = {
      username = "417787"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Freddy Khan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    554858 = {
      username = "554858"
      tags = {
        "CW-Provider"  = "Computech"
        "User Manager" = "Freddy Khan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955025"
      }
    }
    599982 = {
      username = "599982"
      tags = {
        "CW-Provider"  = "TTNI_TTNETWORKINTEGRATIONUS_INC"
        "User Manager" = "Dan Budres"
        "Manager Dept" = "Toyota Motor Engineering_Manufacturing North America_Inc"
        "Cost Center"  = "W6103"
      }
    }
    162739 = {
      username     = "162739"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Kushal Chavan"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550262"
      }
    }
    558018 = {
      username     = "558018"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
      }
    }
    511821 = {
      username     = "511821"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Fanuel Zekiros"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    540382 = {
      username = "540382"
      tags = {
        "CW-Provider"  = "ORANGEPEOPLE"
        "User Manager" = "Sooraj Raghav Srinivasan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    569199 = {
      username = "569199"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    599074 = {
      username     = "599074"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    599503 = {
      username     = "599503"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Quin Smith"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    561593 = {
      username     = "561593"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Traci Vu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    430707 = {
      username = "430707"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    555512 = {
      username = "555512"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Min Hu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    553850 = {
      username = "553850"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Traci Vu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    591611 = {
      username     = "591611"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    603057 = {
      username     = "603057"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Scientila Duddempudi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    596383 = {
      username     = "596383"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    601892 = {
      username     = "601892"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    585712 = {
      username = "585712"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    570261 = {
      username     = "570261"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    578529 = {
      username     = "578529"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Mahesh Jaddangi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    407255 = {
      username = "407255"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    589012 = {
      username = "589012"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    580355 = {
      username = "580355"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    600938 = {
      username = "600938"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    591620 = {
      username = "591620"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    129896 = {
      username = "129896"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    583101 = {
      username = "583101"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    550922 = {
      username = "550922"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Min Hu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    529393 = {
      username = "529393"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Rajesh Chathapuram"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    555513 = {
      username = "555513"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Akhila Guntur"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    598440 = {
      username = "598440"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Lakshmi Pendyala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955114"
      }
    }
    598197 = {
      username = "598197"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Lakshmi Pendyala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955114"
      }
    }
    598209 = {
      username = "598209"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Lakshmi Pendyala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955114"
      }
    }
    576899 = {
      username = "576899"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Oakley Higgins"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    598211 = {
      username = "598211"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Lakshmi Pendyala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955114"
      }
    }
    532049 = {
      username = "532049"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    541478 = {
      username = "541478"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    556851 = {
      username = "556851"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    560435 = {
      username = "560435"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    539152 = {
      username = "539152"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    531015 = {
      username = "531015"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    564097 = {
      username = "564097"
      tags = {
        "CW-Provider"  = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave2_set9"
  }
}

