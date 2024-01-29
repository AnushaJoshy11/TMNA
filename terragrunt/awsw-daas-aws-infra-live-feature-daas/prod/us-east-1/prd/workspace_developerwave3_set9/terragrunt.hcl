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

    602236 = {
      username     = "602236"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Lakshmi Pendyala"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955114"
      }
    }
       584398 = {
      username     = "584398"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    553942 = {
      username     = "553942"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }

    574378 = {
      username     = "574378"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }

    554437 = {
      username     = "554437"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    552000 = {
      username     = "552000"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Anshuman Kowtha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }

    551985 = {
      username     = "551985"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Freddy Khan"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }

    552878 = {
      username     = "552878"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }

    554888 = {
      username     = "554888"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Min Hu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }

    557390 = {
      username     = "557390"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    466261 = {
      username     = "466261"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Ting-Mou Wu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    569200 = {
      username     = "569200"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Sankhadeep Nath"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    579324 = {
      username     = "579324"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    590972 = {
      username     = "590972"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    561254 = {
      username     = "561254"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Charlene Govender"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    584487 = {
      username     = "584487"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Pradeep Parvataneni"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }

    582431 = {
      username     = "582431"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    586623 = {
      username     = "586623"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Bernardita Lejarde"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    577582 = {
      username     = "577582"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Akhila Guntur"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }

    549019 = {
      username     = "549019"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }

    541692 = {
      username     = "541692"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Pradeep Parvataneni"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955089"
      }
    }

    452721 = {
      username     = "452721"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Angela Murthil"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    554097 = {
      username     = "554097"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955025"
      }
    }
    420864 = {
      username     = "420864"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Daniel Hibbard"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    545269 = {
      username     = "545269"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    547888 = {
      username     = "547888"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jason Kazee"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955068"
      }
    }

    579361 = {
      username     = "579361"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Neelima Venreddy"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "322006"
      }
    }

    554107 = {
      username     = "554107"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "William Hie"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }

    584397 = {
      username     = "584397"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    592339 = {
      username     = "592339"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mustafa Elmas"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955090"
      }
    }

    590547 = {
      username     = "590547"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gupta Wijeratne"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    599984 = {
      username     = "599984"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Jai Kumar Dhanasekar"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }

    551079 = {
      username     = "551079"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Bryan Schmidt"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955041"
      }
    }

    537304 = {
      username     = "537304"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mark Morris"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955088"
      }
    }

    544050 = {
      username     = "544050"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }

    570740 = {
      username     = "570740"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }

    451638 = {
      username     = "451638"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Srinivas Hotha"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    587538 = {
      username     = "587538"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Rohit Kalyanshetti"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }

    514379 = {
      username     = "514379"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }

    581299 = {
      username     = "581299"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Mohan Ravi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    590549= {
      username             = "590549"
      running_mode         = "ALWAYS_ON"
      tags = {
          "CW-Provider"     = "Cognizant Technology Solutions"
          "User Manager"    = "NA"
          "Manager Dept"    = "NA"
          "Cost Center"     = "NA"
      }
    }
    601416= {
      username             = "601416"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Rajesh Emani"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955017"
      }
    }

    585371= {
      username             = "585371"
      running_mode         = "ALWAYS_ON"
      tags = {
         "CW-Provider"     = "Cognizant Technology Solutions"
         "User Manager"    = "Dennis Choy"
         "Manager Dept"    = "TMN Toyota Motor North America"
         "Cost Center"     = "955041"
      }
   }
    
    /*adding adhoc users*/
    606027 = {
      username     = "606027"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Lakshmi Pendyala"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955114"
      }
    }

    568789 = {
      username     = "568789"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Kyle Ramey"
        "Manager Dept" = "TIN Stamping _ BodyWeld Division"
        "Cost Center"  = "FV710"
      }
    }

    574487 = {
      username     = "574487"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Jason Symanski"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }

    606026 = {
      username     = "606026"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Kyle Ramey  "
        "Manager Dept" = "TIN Stamping _ BodyWeld Division"
        "Cost Center"  = "FV710"
      }
    }

    606028 = {
      username     = "606028"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Kyle Ramey"
        "Manager Dept" = "TIN Stamping _ BodyWeld Division"
        "Cost Center"  = "FV710"
      }
    }

    606115 = {
      username     = "606115"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHI CONSULTING"
        "User Manager" = "Gopalakrishna Bhat"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955002"
      }
    }

    606116 = {
      username     = "606116"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Selva Nagarajan"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }

    568582 = {
      username     = "568582"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955011"
      }
    }

    605933 = {
      username     = "605933"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "TOYOTA CONNECTED INDIA"
        "User Manager" = "Amir Alipour"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955090"
      }
    }

    606137 = {
      username     = "606137"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Mitch Aubin"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955046"
      }
    }

    606140 = {
      username     = "606140"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }

    606142 = {
      username     = "606142"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }

    606155 = {
      username     = "606155"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }

    606133 = {
      username     = "606133"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Amit Chaudhary"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }

    606181 = {
      username     = "606181"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Amit Chaudhary"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955109"
      }
    }

    606060 = {
      username     = "606060"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Fritz Wilke"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955025"
      }
    }

    606059 = {
      username     = "606059"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Fritz Wilke"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955025"
      }
    }

    598041 = {
      username     = "598041"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Project Associates_Inc"
        "User Manager" = "Teresa Buchanan"
        "Manager Dept" = "TIN Centralized Maintenance Division"
        "Cost Center"  = "EZ800"
      }
    }

    605325 = {
      username     = "605325"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "HITACHI CONSULTING"
        "User Manager" = "Meenakshisundaram Ramanathan"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955075"
      }
    }

    606132 = {
      username     = "606132"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Infosys Limited"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955011"
      }
    }

    606025 = {
      username     = "606025"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Jamie McLaren"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }

    605835 = {
      username     = "605835"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "FORMER VENDOR_UNKNOWN VENDOR"
        "User Manager" = "Jason Symanski"
        "Manager Dept" = "TIN Stamping _ BodyWeld Division"
        "Cost Center"  = "FV710"
      }
    }

    583495 = {
      username     = "583495"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "ASCENTT Business Solutions"
        "User Manager" = "Melody Ayeli"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955004"
      }
    }

    606045 = {
      username     = "606045"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "CISCO SYSTEMS CAPITAL CORP"
        "User Manager" = "Max Hernandez"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955018"
      }
    }

    411406 = {
      username     = "411406"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "Powerhouse Controls"
        "User Manager" = "Jamie Plummer"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }

    605727 = {
      username     = "605727"
      running_mode = "ALWAYS_ON"
      tags = {
        "CW-Provider"  = "ICROSSING_Formerly Proxicom"
        "User Manager" = "Terence Takeguchi"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set9"
  }
}
