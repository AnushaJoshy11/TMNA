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

    516836= {
      username        = "516836"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955046"
      }
    }
    528225= {
      username        = "528225"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Bernardita Lejarde"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"
      }
   }
    543917 = {
      username        = "543917"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Lynn Jahn"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955114"
      }

    }
    576976  = {
      username        = "576976"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "William Hie"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"

      }
    }
    590132= {
      username        = "590132"
      tags = {  
        "CW-Provider" = "VDART"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"

      }
    }
    550618= {
      username        = "550618"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Sriram Thiruvenkatam"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955005"

      }
    }
    593725 = {
      username        = "593725"
      tags = {  
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"

      }
    }
    585786 = {
      username        = "585786"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"

      }
    }
    582517 = {
      username        = "582517"
      tags = {  
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"

      }
    }
       584640  = {
      username        = "584640"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Mark Derickson"
        "Manager Dept"   = "Toyota Logistics Service_Inc"
        "Cost Center"    = "820015"

      }
    }
    516346 = {
      username        = "516346"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"

      }
    }
         566209= {
      username        = "566209"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Srinivas Hotha"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955044"

      }
    }
         175240= {
      username        = "175240"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Neelima Venreddy"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "550251"

      }
    }
    574205 = {
      username        = "574205"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Brian Lieberson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"

      }
    }
    575555= {
      username        = "575555"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955026"

      }
    }
    576232 = {
      username        = "576232"
      tags = {  
        "CW-Provider" = "IBM CORP"
        "User Manager"   = "Rekha Singh"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"

      }
    }
    577249    = {
      username        = "577249"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"

      }
    }
    587096      = {
      username        = "587096"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Stella Santiago"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955003"

      }
    }
    157313      = {
      username        = "157313"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "550251"

      }
    }
    583440        = {
      username        = "583440"
      tags = {  
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager"   = "CNM Reddy"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955017"

      }
    }
    553510         = {
      username        = "553510"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Jolene Mawson"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"

      }
    }
    532762        = {
      username        = "532762"
      tags = {  
        "CW-Provider" = "CONNECTEDX"
        "User Manager"   = "Sooraj Raghav Srinivasan"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"

      }
    }
    469270       = {
      username        = "469270"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Winter Krulisky"
        "Manager Dept"   = "Toyota Motor Sales_USA_Inc"
        "Cost Center"    = "804005"

      }
    }
    559645       = {
      username        = "559645"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Rohit Kalyanshetti"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"

      }
    }
    552861         = {
      username        = "552861"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Sriram Thiruvenkatam"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955005"

      }
    }
    420544       = {
      username        = "420544"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Amy Speer"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955071"

      }
    }
    461941         = {
      username        = "461941"
      tags = {  
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Rajesh Chathapuram"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "996092"

      }
    }
    534578        = {
      username        = "534578"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Rajesh Emani"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"

      }
    }
    516542      = {
      username        = "516542"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Simson Elakattu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"

      }
    }
    598810       = {
      username        = "598810"
      tags = {  
        "CW-Provider" = "FirstEigen"
        "User Manager"   = "Ram Kurapati"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955109"

      }
    }
    599079       = {
      username        = "599079"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Kushal Chavan"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955011"

      }
    }
    552004       = {
      username        = "552004"
      tags = {  
        "CW-Provider" = "HITACHICONSULTING"
        "User Manager"   = "Min Hu"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955071"

      }
    }          
    592779       = {
      username        = "592779"
      tags = {  
        "CW-Provider" = "CONNECTEDX"
        "User Manager"   = "Gupta Wijeratne"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955088"

      }
    }
    582122       = {
      username        = "582122"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"

      }
    }
     539738       = {
      username        = "539738"
      tags = {  
        "CW-Provider" = "CISCOSYSTEMSCAPITALCORP"
        "User Manager"   = "Max Hernandez"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955020"

      }
    }
    597204       = {
      username        = "597204"
      tags = {  
        "CW-Provider" = "ORANGEPEOPLE"
        "User Manager"   = "Steve Berry"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955011"

      }
    }
    452412       = {
      username        = "452412"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Andrew Pham"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955041"

      }
    }
    560035       = {
      username        = "560035"
      tags = {  
        "CW-Provider" = "VDART"
        "User Manager"   = "Adithya Raghuraman"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955066"

      }
    }
    576727= {
      username        = "576727"
      tags = {  
        "CW-Provider" = "InfosysLimited"
        "User Manager"   = "Jai Kumar Dhanasekar"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955042"

      }
    }
    587523  = {
      username        = "587523"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "Sridevi Nimmagadda"
        "Manager Dept"   = "TMN Toyota Motor North America"
        "Cost Center"    = "955088"

      }
    }
   553938   = {
      username        = "553938"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"

      }
    }
    442600  = {
      username        = "442600"
      tags = {  
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager"   = "NA"
        "Manager Dept"   = "NA"
        "Cost Center"    = "NA"

      }
    }
 
  }
 
 
 
  ws_running_mode = "ALWAYS_ON"
  ws_compute_type_name     = "POWER"
  ws_bundle_id    = "wsb-1rj4f26hh"
  ws_directory_id = "d-90678a5aff"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key = "arn:aws:kms:us-east-1:077387244011:key/5dc393d0-3b81-4589-bb3c-f87922b54456"
  ws_tags = {
    "Persona" = "developer"
    "git_module"       = "prod/us-east-1/prd/workspace_developerwave2_set10"
  }
}
