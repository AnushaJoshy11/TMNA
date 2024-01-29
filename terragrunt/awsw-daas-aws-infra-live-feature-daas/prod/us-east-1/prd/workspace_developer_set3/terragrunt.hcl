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
    

    589262 = {
      username     = "589262"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    591459 = {
      username     = "591459"
      tags = {
        "CW-Provider" = "EPI-USE LABS"
        "User Manager" = "Gina Guzman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955075"
      }
    }
   591458 = {
      username     = "591458"
      tags = {
        "CW-Provider" = "EPI-USE LABS"
        "User Manager" = "Gina Guzman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955075"
      }
    }
    594906 = {
      username     = "594906"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955011"
      }
    }
    595262 = {
      username     = "595262"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    596209 = {
      username     = "596209"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Cindy Wei"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955063"
      }
    }
    597203 = {
      username     = "597203"
      tags = {
        "CW-Provider" = "ORANGE PEOPLE"
        "User Manager" = "Steve Berry"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955011"
      }
    }
    598786 = {
      username     = "598786"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Andrew Pham"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    599145 = {
      username     = "599145"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Mohan Ravi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    599636 = {
      username     = "599636"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    600446 = {
      username     = "600446"
      tags = {
        "CW-Provider" = "ONENECK IT SOLUTIONS"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955018"
      }
    }
    523176 = {
      username     = "523176"
      tags = {
        "CW-Provider" = "Compugen"
        "User Manager" = "Mike Julian"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    600812 = {
      username     = "600812"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    601154 = {
      username     = "601154"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Tom Miller"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955085"
      }
    }
    601366 = {
      username     = "601366"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    601804 = {
      username     = "601804"
      tags = {
        "CW-Provider" = "IBM CORP"
        "User Manager" = "Rohit Kalyanshetti"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    602295 = {
      username     = "602295"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    602371 = {
      username     = "602371"
      tags = {
        "CW-Provider" = "McKinsey consulting"
        "User Manager" = "David Herb"
        "Manager Dept" = "TMS Supply Chain Management_SCM_Divisi"
        "Cost Center"  = "201007"
      }
    }
    602376 = {
      username     = "602376"
      tags = {
        "CW-Provider" = "McKinsey consulting"
        "User Manager" = "David Herb"
        "Manager Dept" = "TMS Supply Chain Management SCM Divisi"
        "Cost Center"  = "201007"
      }
    }
    602983 = {
      username     = "602983"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    603147 = {
      username     = "603147"
      tags = {
        "CW-Provider" = "McKinsey consulting"
        "User Manager" = "David Herb"
        "Manager Dept" = "TMS Supply Chain Management SCM Divisi"
        "Cost Center"  = "201007"
      }
    }
    603232 = {
      username     = "603232"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    603231 = {
      username     = "603231"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    603236 = {
      username     = "603236"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    603237 = {
      username     = "603237"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    603220 = {
      username     = "603220"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Bernardita Lejarde"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    603474 = {
      username     = "603474"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    603636 = {
      username     = "603636"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    603582 = {
      username     = "603582"
      tags = {
        "CW-Provider" = "CISCO SYSTEMS CAPITAL CORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    603776 = {
      username     = "603776"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    603759 = {
      username     = "603759"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955002"
      }
    }
    603758 = {
      username     = "603758"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955002"
      }
    }
    603762 = {
      username     = "603762"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    603763 = {
      username     = "603763"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    603760 = {
      username     = "603760"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955002"
      }
    }
    603662 = {
      username     = "603662"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    603773 = {
      username     = "603773"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Stella Santiago"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955003"
      }
    }
    603771 = {
      username     = "603771"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    603772 = {
      username     = "603772"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    603666 = {
      username     = "603666"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Selva Nagarajan"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    603754 = {
      username     = "603754"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    603661 = {
      username     = "603661"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    603764 = {
      username     = "603764"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    450141 = {
      username     = "450141"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Stella Santiago"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955003"
      }
    }
    603748 = {
      username     = "603748"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    603786 = {
      username     = "603786"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955002"
      }
    }
    603788 = {
      username     = "603788"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    603846 = {
      username     = "603846"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955044"
      }
    }
    603853 = {
      username     = "603853"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    
    604058 = {
      username     = "604058"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955066"
      }
    }
    604081 = {
      username     = "604081"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    604112 = {
      username     = "604112"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Justin Lynch"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955023"
      }
    }
    604286 = {
      username     = "604286"
      tags = {
        "CW-Provider" = "ENGINEERING USA"
        "User Manager" = "Glenn Hall"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955111"
      }
    }
    604161 = {
      username     = "604161"
      tags = {
        "CW-Provider" = "HITACHI CONSULTING"
        "User Manager" = "Scientila Duddempudi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955074"
      }
    }
    604254 = {
      username     = "604254"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    604251 = {
      username     = "604251"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Viswaraj Thamma"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    604259 = {
      username     = "604259"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Jolene Mawson"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
      }
    }
    604246 = {
      username     = "604246"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    604247 = {
      username     = "604247"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    604249 = {
      username     = "604249"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    604248 = {
      username     = "604248"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955040"
      }
    }
    604204 = {
      username     = "604204"
      tags = {
        "CW-Provider" = "WIPRO"
        "User Manager" = "Shiva Reddy Muduganti"
        "Manager Dept" = "TMS Product Planning Division"
        "Cost Center"  = "109002"
      }
    }
    604381 = {
      username     = "604381"
      tags = {
        "CW-Provider" = "MINDTREE LTD"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955025"
      }
    }
    604498 = {
      username     = "604498"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    604522 = {
      username     = "604522"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Garred Austin"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955108"
      }
    }
    604518 = {
      username     = "604518"
      tags = {
        "CW-Provider" = "HITACHI CONSULTING"
        "User Manager" = "Gina Guzman"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955074"
      }
    }
    604576 = {
      username     = "604576"
      tags = {
        "CW-Provider" = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    604626 = {
      username     = "604626"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955042"
      }
    }
    604661 = {
      username     = "604661"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    604662 = {
      username     = "604662"
      tags = {
        "CW-Provider" = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }
    604664 = {
      username     = "604664"
      tags = {
        "CW-Provider" = "Cognizant Technology Solutions"
        "User Manager" = "Dennis Choy"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955041"
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
    "git_module" = "prod/us-east-1/prd/workspace_developer_set3"
  }
}
