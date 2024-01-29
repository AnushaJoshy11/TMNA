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
    # wave 3


520937 = {
      username = "520937"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
     590208 = {
      username = "590208"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
     589011 = {
      username = "589011"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
     582194 = {
      username = "582194"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mohan Ravi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
     540578 = {
      username = "540578"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
     599170 = {
      username = "599170"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mohan Ravi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
     410571 = {
      username = "410571"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mark Morris"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
     578860 = {
      username = "578860"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955044"
      }
    }
     454067 = {
      username = "454067"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Pradeep Parvataneni"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }
     559522 = {
      username = "559522"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
     449578 = {
      username = "449578"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mark Morris"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }
     587475 = {
      username = "587475"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Oakley Higgins"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
     423927 = {
      username = "423927"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }
     590840 = {
      username = "590840"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
     566640 = {
      username = "566640"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Engels Tang"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
     452134 = {
      username = "452134"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
     590275 = {
      username = "590275"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Peter Amstutz"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }
     583460 = {
      username = "583460"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    409504 = {
      username = "409504"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Pradeep Parvataneni"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    579021 = {
      username = "579021"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955044"
      }
    }

426377 = {
      username = "426377"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

559650 = {
      username = "559650"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Michael Babiak"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

570485 = {
      username = "570485"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955006"
      }
    }
573275 = {
      username = "573275"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
599440 = {
      username = "599440"
       running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Quin Smith"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
584515 = {
      username = "584515"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955043"
      }
    }
516548 = {
      username = "516548"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
594333 = {
      username = "594333"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
594319 = {
      username = "594319"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
410127 = {
      username = "410127"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955040"
      }
    }
537081 = {
      username = "537081"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
568779 = {
      username = "568779"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "124003"
      }
    }
409671 = {
      username = "409671"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gregory Lyn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
575648 = {
      username = "575648"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
547847 = {
      username = "547847"
      tags = {
        "CW-Provider"  = "CONNECTEDX"
        "User Manager" = "Srikanth Kintali"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    564662 = {
      username = "564662"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    404972 = {
      username = "404972"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    599180 = {
      username = "599180"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    516311 = {
      username = "516311"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gregory Lyn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    532305 = {
      username = "532305"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "EN Engineering LLC"
        "User Manager" = "Joe Li"
        "Manager Dept" = "Toyota Motor Mfg_Texas_Inc"
        "Cost Center"  = "WT900"
      }
    }
    513253 = {
      username = "513253"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    601399 = {
      username = "601399"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ENGINEERINGUSA"
        "User Manager" = "Leon Drasovean"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    594332 = {
      username = "594332"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    596368 = {
      username = "596368"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    587984 = {
      username = "587984"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955085"
      }
    }
    587638 = {
      username = "587638"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    601810 = {
      username = "601810"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ENGINEERINGUSA"
        "User Manager" = "Glenn Hall"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }
    142128 = {
      username = "142128"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "William Hie"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "550251"
      }
    }
    577492 = {
      username = "577492"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    579095 = {
      username = "579095"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Tim Hugo"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    425522 = {
      username = "425522"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    176173 = {
      username = "176173"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gregory Lyn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    582647 = {
      username = "582647"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    519056 = {
      username = "519056"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    540328 = {
      username = "540328"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Jamie McLaren"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
    603751 = {
      username = "603751"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    561695 = {
      username = "561695"
      tags = {
        "CW-Provider"  = "CISCOSYSTEMSCAPITALCORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955018"
      }
    }
    591886 = {
      username = "591886"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    587070 = {
      username = "587070"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Kimberly Gonzales"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955065"
      }
    }
    579463 = {
      username = "579463"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    592365 = {
      username = "592365"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955004"
      }
    }
    554430 = {
      username = "554430"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mohan Ravi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955003"
      }
    }
    150885 = {
      username = "150885"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "500001"
      }
    }
    577727 = {
      username = "577727"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    512335 = {
      username = "512335"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Terry Harrison"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955010"
      }
    }
    424865 = {
      username = "424865"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Uday Jullapally"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    599160 = {
      username = "599160"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    579657 = {
      username = "579657"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    582851 = {
      username = "582851"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Drew Kalangie"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set11"
  }
}
