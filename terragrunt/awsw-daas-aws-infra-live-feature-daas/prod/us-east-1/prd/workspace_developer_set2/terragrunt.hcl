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
   604665= {
      username = "604665"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Dennis Choy"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955041"
      }
      
    }

    604663= {
      username = "604663"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Bernardita Lejarde"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955041"
      }
      
    }

    604666= {
      username = "604666"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Dennis Choy"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955041"
      }
      
    }

    604669= {
      username = "604669"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP"
        "User Manager"    = "Srinivas Prasad"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }


    604668= {
      username = "604668"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Dennis Choy"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955041"
      }
      
    }

    604667= {
      username = "604667"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Dennis Choy"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955041"
      }
      
    }


    604676= {
      username = "604676"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955040"
      }
      
    }

    604682= {
      username = "604682"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Daniel Hibbard"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955029"
      }
      
    }

    604678= {
      username = "604678"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Sriram Thiruvenkatam"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955029"
      }
      
    }

    604680= {
      username = "604680"
      tags = {
        "CW-Provider"     = "ORANGE PEOPLE"
        "User Manager"    = "Steve Berry"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955011"
      }
      
    }

    604689= {
      username = "604689"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Dennis Choy"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955041"
      }
      
    }

    577918= {
      username = "577918"
      tags = {
        "CW-Provider"     = "EOSYS"
        "User Manager"    = "Scott Bartlett"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955026"
      }
      
    }

    604888= {
      username = "604888"
      tags = {
        "CW-Provider"     = "Clearpath"
        "User Manager"    = "Jamie Plummer"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955026"
      }
      
    }

    604891= {
      username = "604891"
      tags = {
        "CW-Provider"     = "Clearpath"
        "User Manager"    = "Jamie Plummer"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955026"
      }
      
    }

    604910= {
      username = "604910"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955040"
      }
      
    }

    604968= {
      username = "604968"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP"
        "User Manager"    = "Mohan Ravi"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955017"
      }
      
    }

    604969= {
      username = "604969"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Mohan Ravi"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955017"
      }
      
    }

    604981= {
      username = "604981"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955040"
      }
      
    }

    604979= {
      username = "604979"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955040"
      }
      
    }

    605056= {
      username = "605056"
      tags = {
        "CW-Provider"     = "MINDTREE LTD"
        "User Manager"    = "Lakshmi Pendyala"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955114"
      }
      
    }

    605057= {
      username = "605057"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Uday Jullapally"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955111"
      }
      
    }

    605054= {
      username = "605054"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Steve Kang"
        "Manager Dept"    = "TMS Best in Town Division"
        "Cost Center"     = "700050"
      }
      
    }

    605061= {
      username = "605061"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP"
        "User Manager"    = "Rekha Singh"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }
    605067= {
      username = "605067"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Ram Kurapati"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }
    605065= {
      username = "605065"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Amit Chaudhary"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }

    605071= {
      username = "605071"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Dennis Choy"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955041"
      }
      
    }

    605070= {
      username = "605070"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Angela Murthil"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955065"
      }
      
    }

    605126= {
      username = "605126"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Tom Miller"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955085"
      }
      
    }

    605139= {
      username = "605139"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP"
        "User Manager"    = "Srinivas Prasad"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }

    605130= {
      username = "605130"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP"
        "User Manager"    = "Srinivas Prasad"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }


    605296= {
      username = "605296"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Srinivas Hotha"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955044"
      }
      
    }

    605311= {
      username = "605311"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Andrew Pham"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955065"
      }
      
    }

    605312= {
      username = "605312"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Andrew Pham"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955065"
      }
      
    }

    605314= {
      username = "605314"
      tags = {
        "CW-Provider"     = "MINDTREE LTD"
        "User Manager"    = "Amy Speer"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955025"
      }
      
    }

    605313= {
      username = "605313"
      tags = {
        "CW-Provider"     = "MINDTREE LTD"
        "User Manager"    = "Amy Speer"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955025"
      }
      
    }

    605321= {
      username = "605321"
      tags = {
        "CW-Provider"     = "HITACHI CONSULTING"
        "User Manager"    = "Anshuman Kowtha"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955074"
      }
      
    }

    605471= {
      username = "605471"
      tags = {
        "CW-Provider"     = "John Bean Technologies Corporation"
        "User Manager"    = "Jamie Plummer"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955026"
      }
      
    }

    605728= {
      username = "605728"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP"
        "User Manager"    = "Rekha Singh"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }



    605745= {
      username = "605745"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955040"
      }
      
    }


    605858= {
      username = "605858"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Andrew Pham"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955065"
      }
      
    }

    605861= {
      username = "605861"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Uday Jullapally"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955042"
      }
      
    }

    605860= {
      username = "605860"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Amy Speer"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955001"
      }
      
    }

    605869= {
      username = "605869"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Fritz Wilke"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955025"
      }
      
    }

    605870= {
      username = "605870"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Fritz Wilke"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955025"
      }
      
    }

    605871= {
      username = "605871"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Fritz Wilke"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955025"
      }
      
    }

    605912= {
      username = "605912"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Lauren Drew"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955074"
      }
      
    }

    605911= {
      username = "605911"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Lauren Drew"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955074"
      }
      
    }

    605913= {
      username = "605913"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Lauren Drew"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955074"
      }
      
    }

    605939= {
      username = "605939"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Garred Austin"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955108"
      }
      
    }

    413145= {
      username = "413145"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Cindy Wei"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955063"
      }
      
    }

    606138= {
      username = "606138"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Ram Kurapati"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
      }
      
    }


    174973= {
      username = "174973"
      tags = {
        "CW-Provider"     = "Infosys Limited"
        "User Manager"    = "Angela Murthil"
        "Manager Dept"    = "TMS Information Systems Division"
        "Cost Center"     = "550251"
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
    "git_module"       = "prod/us-east-1/prd/workspace_developer_set2"
  }
}









