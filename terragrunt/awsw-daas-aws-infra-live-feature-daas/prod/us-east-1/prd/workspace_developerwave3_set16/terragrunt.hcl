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

 573150 = {
      username = "573150"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Abhilash Subash"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "109002"
      }
    }
    538924 = {
      username = "538924"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
  601424 = {
      username = "601424"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
   510591 = {
      username = "510591"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "CONNECTEDX"
        "User Manager" = "Russ Stevenson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956315"
      }
    }
   593879 = {
      username = "593879"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
   531965 = {
      username = "531965"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    600521 = {
      username = "600521"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    594331 = {
      username = "594331"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    588796 = {
      username = "588796"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Rekha Singh"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    601889 = {
      username = "601889"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955040"
      }
    }
    580753 = {
      username = "580753"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    581514 = {
      username = "581514"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Matt Brown"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955002"
      }
    }
    585124 = {
      username = "585124"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    580880 = {
      username = "580880"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
    534296 = {
      username = "534296"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sybil Sheppard-Deyell"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    588642 = {
      username = "588642"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Betty Holdvogt"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    583554 = {
      username = "583554"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ORANGEPEOPLE"
        "User Manager" = "Abhishek Sharma"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955011"
      }
    }
    440440 = {
      username = "440440"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Wayne Mattingly"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
    584404 = {
      username = "584404"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "Toyota Logistics Service_Inc"
        "Cost Center"  = "820015"
      }
    }
    556380 = {
      username = "556380"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Christina McCarver"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    578279 = {
      username = "578279"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Marshall Dempsey"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955023"
      }
    }
    570719 = {
      username = "570719"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Amy Speer"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955071"
      }
    }
    601209 = {
      username = "601209"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    556705 = {
      username = "556705"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Trong Nguyen"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    528930 = {
      username = "528930"
      tags = {
        "CW-Provider"  = "LEADINGTORCHLLC"
        "User Manager" = "James Tu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }
     603203 = {
      username = "603203"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Gregory Lyn"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    577196 = {
      username = "577196"
      tags = {
        "CW-Provider"  = "ACCENTURE"
        "User Manager" = "Trong Nguyen"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "956518"
      }
    }
    419119 = {
      username = "419119"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Suhail Mirza"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "957200"
      }
    }
   582861 = {
      username = "582861"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
   603749 = {
      username = "603749"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Michael Gutierrez"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
   516537 = {
      username = "516537"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Simson Elakattu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955020"
      }
    }
    548910 = {
      username = "548910"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sriram Thiruvenkatam"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    566702 = {
      username = "566702"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Krishna Eranki"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    593414 = {
      username = "593414"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "IBM CORP"
        "User Manager" = "Srinivas Prasad"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955109"
      }
    }
   598454 = {
      username = "598454"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Koteswar Rangaraju"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
   584385 = {
      username = "584385"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    588210 = {
      username = "588210"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
   540270 = {
      username = "540270"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "HITACHICONSULTING"
        "User Manager" = "Scientila Duddempudi"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }
    582940 = {
      username = "582940"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Brian Lieberson"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
   528754 = {
      username = "528754"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    588398 = {
      username = "588398"
      tags = {
        "CW-Provider"  = "ASCENTTBusinessSolutions"
        "User Manager" = "Amandeep Chanana"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955004"
      }
    }
    558436 = {
      username = "558436"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    575045 = {
      username = "575045"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Sarkis Nalchadjian"
        "Manager Dept" = "Toyota Motor Sales_USA_Inc"
        "Cost Center"  = "322006"
      }
    }
    511804 = {
      username = "511804"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Matthews Intl Corp_DBA Lighting Pick"
        "User Manager" = "Craig Vincek"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955026"
      }
    }
   600029 = {
      username = "600029"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DELOITTE CONSULTING LLP"
        "User Manager" = "CNM Reddy"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955017"
      }
    }
    527571 = {
      username = "527571"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Jamie McLaren"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955046"
      }
    }
    586602 = {
      username = "586602"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Tapas Bose"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955005"
      }
    }
    586618 = {
      username = "586618"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955074"
      }
    }

   
    579992 = {
      username = "579992"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "NA"
        "Manager Dept" = "NA"
        "Cost Center"  = "NA"
      }
    }
    531084 = {
      username = "531084"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "MINDTREE LTD"
        "User Manager" = "Scarlett Liu"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955072"
      }
    }
    529398 = {
      username = "529398"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Cognizant Technology Solutions"
        "User Manager" = "Rich Husa"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955108"
      }
    }
    599166 = {
      username = "599166"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Adithya Raghuraman"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955066"
      }
    }
    580335 = {
      username = "580335"
      tags = {
        "CW-Provider"  = "InfosysLimited"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMN Toyota Motor North America"
        "Cost Center"  = "955042"
      }
    }
     

605868= {
      username             = "605868"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Infosys Limited" 
        "User Manager"    = "Ram Kurapati"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
        }
    }
  

   606139= {
      username             = "606139"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Infosys Limited" 
        "User Manager"    = "Keith Blum"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955113"
        }
    }

   570648= {
      username             = "570648"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Infosys Limited" 
        "User Manager"    = "Keith Blum"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955113"
        }
    }

   606141= {
      username             = "606141"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Infosys Limited" 
        "User Manager"    = "Ram Kurapati"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
        }
    }

  

   405622= {
      username             = "405622"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "TMNA" 
        "User Manager"    = "Andy Talby"
        "Manager Dept"    = "TNA Powertrain Design Division"
        "Cost Center"     = "W8110"
        }
    }

   606238= {
      username             = "606238"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "NEURAFLASH" 
        "User Manager"    = "Mitch Aubin"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955046"
        }
    }

   606236= {
      username             = "606236"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY" 
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955013"
        }
    }

   606237= {
      username             = "606237"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY" 
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955013"
        }
    }

   605306= {
      username             = "605306"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Infosys Limited" 
        "User Manager"    = "Rich Husa"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955109"
        }
    }

    606058= {
      username             = "606058"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Fritz Wilke"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955025"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set16"

  }
}
