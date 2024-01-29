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
      553512= {
      username             = "553512"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Andrew Pham"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    584513= {
      username             = "584513"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jolene Mawson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    580283= {
      username             = "580283"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    584977= {
      username             = "584977"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gupta Wijeratne"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

    545920= {
      username             = "545920"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Justin Lynch"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955023"
        }
    }

    570616= {
      username             = "570616"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gregory Lyn"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

    551880= {
      username             = "551880"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
        }
    }

    583487= {
      username             = "583487"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
        }
    }

    571436= {
      username             = "571436"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Andrew Pham"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    540552= {
      username             = "540552"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Andrew Pham"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    584959= {
      username             = "584959"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rohit Kalyanshetti"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955109"
        }
    }

    596363= {
      username             = "596363"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    570822= {
      username             = "570822"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955011"
        }
    }

    569311= {
      username             = "569311"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
        }
    }

    556012= {
      username             = "556012"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Garred Austin"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

    584509= {
      username             = "584509"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
        }
    }

    406510= {
      username             = "406510"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Adithya Raghuraman"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
        }
    }

    580015= {
      username             = "580015"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    587438= {
      username             = "587438"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "HITACHICONSULTING"
         "User Manager"    = "Rajesh Chathapuram"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955075"
        }
    }

    600939= {
      username             = "600939"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rich Husa"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
        }
    }

    544395= {
      username             = "544395"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Andrew Pham"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    555917= {
      username             = "555917"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    548207= {
      username             = "548207"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mohan Ravi"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
        }
    }

    596371= {
      username             = "596371"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jon Andrews"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955025"
        }
    }

    550507= {
      username             = "550507"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
        }
    }

    582932= {
      username             = "582932"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    577695= {
      username             = "577695"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rohit Kalyanshetti"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    582428= {
      username             = "582428"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jon Andrews"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955026"
        }
    }

    451153= {
      username             = "451153"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mike Mora"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }

   582937= {
      username             = "582937"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    157348= {
      username             = "157348"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Bernardita Lejarde"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

      548903= {
      username             = "548903"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "N/A"
         "Manager Dept"    = "N/A"
         "Cost Center"     = "N/A"
        }
    }  

    577394= {
      username             = "577394"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "VDART"
         "User Manager"    = "Adithya Raghuraman"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
        }
    }

    594905= {
      username             = "594905"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Abhishek Sharma"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955011"
        }
    }

    452231= {
      username             = "452231"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "LEADINGTORCHLLC"
         "User Manager"    = "Lauren Drew"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955074"
        }
    }

    542329= {
      username             = "542329"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Charlene Govender"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    549014= {
      username             = "549014"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Neelima Venreddy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
        }
    }

    571434= {
      username             = "571434"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jolene Mawson"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    581699= {
      username             = "581699"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Wayne Mattingly"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955026"
        }
    }

    559790= {
      username             = "559790"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "PARIVEDASOLUTIONS"
         "User Manager"    = "Sooraj Raghav Srinivasan"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
        }
    }

    580842= {
      username             = "580842"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Jai Kumar Dhanasekar"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    587455= {
      username             = "587455"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Lauren Drew"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955074"
        }
    }

    444109= {
      username             = "444109"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Sriram Thiruvenkatam"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
        }
    }

    529041= {
      username             = "529041"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Andrew Pham"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "150002"
        }
    }
    
    600809= {
      username             = "600809"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Sarkis Nalchadjian"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955043"
        }
    }

    582244= {
      username             = "582244"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Daniel Hibbard"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
        }
    }

    527446= {
      username             = "527446"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Dennis Choy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
        }
    }

    574929= {
      username             = "574929"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Gabriel Pagan"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955065"
        }
    }

    550510= {
      username             = "550510"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mohan Ravi"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
        }
    }

    442060= {
      username             = "442060"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rohit Kalyanshetti"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    595390= {
      username             = "595390"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Salman Ghauri"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955023"
        }
    }

    576729= {
      username             = "576729"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rohit Kalyanshetti"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    181393= {
      username             = "181393"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Sarkis Nalchadjian"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955043"
        }
    }

   583263= {
      username             = "583263"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Beth Ocelli"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    593880= {
      username             = "593880"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Adithya Raghuraman"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955066"
        }
    }

    585305= {
      username             = "585305"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Charlene Govender"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    572559= {
      username             = "572559"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Garred Austin"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955108"
        }
    }
    
   589857= {
      username             = "589857"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Sankhadeep Nath"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "955072"
        }
     }

    583537= {
      username             = "583537"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Andrew Pham"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    550509= {
      username             = "550509"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955005"
        }
    }

   581294= {
      username             = "581294"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Pradeep Parvataneni"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955089"
        }
    }

    408688= {
      username             = "408688"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gupta Wijeratne"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955088"
        }
    }

    468086= {
      username             = "468086"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Mohan Ravi"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "321007"
        }
    }

    539810= {
      username             = "539810"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    413663= {
      username             = "413663"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Kimberly Gonzales"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "550297"
        }
    }

    510253= {
      username             = "510253"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "William Hie"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
        }
    }

    555829= {
      username             = "555829"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "William Hie"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
        }
    }

    469117= {
      username             = "469117"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "William Hie"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955042"
        }
    }

    560556= {
      username             = "560556"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Gupta Wijeratne"
         "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
         "Cost Center"     = "322006"
        }
    }

     571890= {
      username             = "571890"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "InfosysLimited"
         "User Manager"    = "Amy Speer"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955071"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set10"
  }
}
