
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

    156687  = {
      username = "156687"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    454116  = {
      username = "454116"
      tags = {
        "CW-Provider"  = "ICROSSING_Formerly Proxicom"
        "User Manager" = "Terence Takeguchi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    454856  = {
      username = "454856"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
     510127 = {
      username = "510127"
      tags = {
        "CW-Provider"  = "Heartland Automation"
        "User Manager" = "David Pellett"
        "Manager Dept" = "TIN Production Control Division"
        "Cost Center"  = "EX910"
      }
    }
    544051 = {
      username = "544051"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955113"
      }
    }
    548896  = {
      username = "548896"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    549566  = {
      username = "549566"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955046"
      }
    }
    549580  = {
      username = "549580"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Mohan Ravi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955046"
      }
    }
    555158  = {
      username = "555158"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955043"
      }
    }
    559530  = {
      username = "559530"
      tags = {
        "CW-Provider"  = "DIMIOUR LLC_FORMERLY VDART"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    565903  = {
      username = "565903"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Keith Blum"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955113"
      }
    }
    569959 = {
      username = "569959"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMS Supply Chain Management_SCM Divisi"
        "Cost Center"  = "124005"
      }
    }
    571923  = {
      username = "571923"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955011"
      }
    }
    573272  = {
      username = "573272"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955011"
      }
    }
    575520= {
      username = "575520"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955063"
      }
    }
    
    578389 = {
      username = "578389"
      tags = {
        "CW-Provider"  = "CISCO SYSTEMS CAPITAL CORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    579337= {
      username = "579337"
      tags = {
        "CW-Provider"  = "DIMIOUR LLC_FORMERLY VDART"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    580894  = {
      username = "580894"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mike Mora"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    582400= {
      username = "582400"
      tags = {
        "CW-Provider"  = "BOOZ ALLEN HAMILTON_INC"
        "User Manager" = "Jake Marullo"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955023"
      }
    }
    584683  = {
      username = "584683"
      tags = {
        "CW-Provider"  = "CISCO SYSTEMS CAPITAL CORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    588801 = {
      username = "588801"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Travis Washington"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    588791= {
      username = "588791"
      tags = {
        "CW-Provider"  = "McKinsey consulting"
        "User Manager" = "David Herb"
        "Manager Dept" = "TMS Supply Chain Management_SCM Divisi"
        "Cost Center"  = "201007"
      }
    }

# adding new users zewen
   579922= {
      username = "579922"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Ram Kurapati"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }
    
    606364= {
      username = "606364"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955001"
      }
      
    }

    606360= {
      username = "606360"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955001"
      }
      
    }

    606367= {
      username = "606367"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955001"
      }
      
    }

    419832= {
      username = "419832"
      tags = {
        "CW-Provider"     = "Tata Consultancy Services Limited"
        "User Manager"    = "Brian Callahan"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955019"
      }
      
    }

   

    405271= {
      username = "405271"
      tags = {
        "CW-Provider"     = "TMNA"
        "User Manager"    = "Ben Ferguson"
        "Manager Dept"    = "TNA Production Engineering Division"
        "Cost Center"     = "W8110"
      }
      
    }

  

    606368= {
      username = "606368"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Jai Kumar Dhanasekar"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955042"
      }
      
    }

 

    605060= {
      username = "605060"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP"
        "User Manager"    = "Rekha Singh"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }

    571762= {
      username = "571762"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Adithya Raghuraman"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955066"
      }
      
    }



   
    449454= {
      username = "449454"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Salman Ghauri"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955014"
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
    "git_module" = "prod/us-east-1/prd/workspace_developer_set4"
  }
}



 

