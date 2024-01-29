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
    590525 = {
      username     = "590525"
      tags = {
        "CW-Provider" = "NA"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    572553 = {
      username     = "572553"
      tags = {
        "CW-Provider" = "ARTECH INFORMATION SYSTEMS_LLC_ZC"
        "User Manager" = "Ken Collins"
        "Manager Dept" = "Information Systems Division"
        "Cost Center"  = "IRZ00"
      }
    }
   /*
   508121 = {
      username     = "508121"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955013"
      }
    }

  
    574487 = {
      username     = "574487"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager" = "Jason Symanski"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }

    583100 = {
      username     = "583100"
      tags = {
        "CW-Provider" = "NSO DevOps Team"
        "User Manager" = "Mahesh Jaddangi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
*/
    599144 = {
      username     = "599144"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    602677 = {
      username     = "602677"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606695 = {
      username     = "606695"
      tags = {
        "CW-Provider" = "HITACHI CONSULTING"
        "User Manager" = "Alejandra Toussaint"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955074"
      }
    }
     606727= {
      username     = "606727"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Justin Lynch"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955023"
      }
    }
    606742 = {
      username     = "606742"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955108"
      }
    }
    156587 = {
      username     = "156587"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Srini Satrasala"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
     606605= {
      username     = "606605"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "TMNA OneTech Division"
        "Manager Dept" = "Fritz Wilke"
        "Cost Center"  = "955025"
      }
    }
     606588= {
      username     = "606588"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Dennis Choy"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
601162 = {
      username     = "601162"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    606292 = {
      username     = "606292"
      tags = {
        "CW-Provider" = "Adobe Systems Inc"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955063"
      }
    }
    605999 = {
      username     = "605999"
      tags = {
        "CW-Provider" = "Adobe Systems Inc"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955063"
      }
    }
    605943 = {
      username     = "605943"
      tags = {
        "CW-Provider" = "Adobe Systems Inc"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955063"
      }
    }
    606001 = {
      username     = "606001"
      tags = {
        "CW-Provider" = "Adobe Systems Inc"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955063"
      }
    }
    602024 = {
      username     = "602024"
      tags = {
        "CW-Provider" = "Adobe Systems Inc"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955063"
      }
    }
    
    605187 = {
      username     = "605187"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    605062 = {
      username     = "605062"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606734 = {
      username     = "606734"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    465153 = {
      username     = "465153"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606607 = {
      username     = "606607"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955044"
      }
    }
    606604 = {
      username     = "606604"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955044"
      }
    }
    570081 = {
      username     = "570081"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "124005"
      }
    }
    599953 = {
      username     = "599953"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    531961 = {
      username     = "531961"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955113"
      }
    }
    606735 = {
      username     = "606735"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606737 = {
      username     = "606737"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606738 = {
      username     = "606738"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    } 
######12-01-2024###############

605068 = {
      username     = "605068"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    605064 = {
      username     = "605064"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606921 = {
      username     = "606921"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    592344 = {
      username     = "592344"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606145 = {
      username     = "606145"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606210 = {
      username     = "606210"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606146 = {
      username     = "606146"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606813 = {
      username     = "606813"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    443012 = {
      username     = "443012"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606386 = {
      username     = "606386"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Selva Nagarajan"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    606726 = {
      username     = "606726"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Amit Chaudhary"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    606921 = {
      username     = "606921"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    591122 = {
      username     = "591122"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Selva Nagarajan"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    443051 = {
      username     = "443051"
      tags = {
        "CW-Provider" = "TMNA"
        "User Manager" = "David Burke"
        "Manager Dept" = "TNA Integrated Vehicle Systems Division"
        "Cost Center"  = "W9411"
      }
    }
    606722 = {
      username     = "606722"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Bernardita Lejarde"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    606791 = {
      username     = "606791"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Matt Brown"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    606723 = {
      username     = "606723"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Bernardita Lejarde"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    606724 = {
      username     = "606724"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Bernardita Lejarde"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    606814 = {
      username     = "606814"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955001"
      }
    }
    606729 = {
      username     = "606729"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955001"
      }
    }
    606730 = {
      username     = "606730"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955001"
      }
    }
    606731 = {
      username     = "606731"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955001"
      }
    }
    606732 = {
      username     = "606732"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955001"
      }
    }
    606733 = {
      username     = "606733"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955001"
      }
    }
    606888 = {
      username     = "606888"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    420183 = {
      username     = "420183"
      tags = {
        "CW-Provider" = "Beyondsoft Consulting_Inc"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMNA Corporate Shared Services Division"
        "Cost Center"  = "956616"
      }
    }
    534864 = {
      username     = "534864"
      tags = {
        "CW-Provider" = "TOYOTA TSUSHO_Affiliate"
        "User Manager" = "Joseph Adams"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955023"
      }
    }
    607053 = {
      username     = "607053"
      tags = {
        "CW-Provider" = "NEURAFLASH"
        "User Manager" = "Mitch Aubin"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955046"
      }
    }
    591122 = {
      username     = "591122"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Selva Nagarajan"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    607054= {
      username     = "607054"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Fritz Wilke"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955025"
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
    "git_module"       = "prod/us-east-1/prd/workspace_developer_set5"
  }
}
