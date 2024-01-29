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
    411784= {
      username             = "411784"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited"
        "User Manager"    = "Gopalakrishna Bhat"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955002"
        }
    }

    401976= {
      username             = "401976"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions"
        "User Manager"    = "Lynn Jahn"
        "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
        "Cost Center"     = "500001"
        }
    }

    584484= {
      username             = "584484"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP" 
        "User Manager"    = "CNM Reddy"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
        }
    }

    415885= {
      username             = "415885"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Mark Morris"
        "Manager Dept"    = "Toyota Motor Sales_USA_Inc"
        "Cost Center"     = "550251"
        }
    }

    509094= {
      username             = "509094"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Sarkis Nalchadjian"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955108"
        }
    }

    567110= {
      username             = "567110"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Dennis Choy"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    589236= {
      username             = "589236"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "DELOITTE CONSULTING LLP" 
        "User Manager"    = "Srinivas Prasad"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955109"
        }
    }

    178953= {
      username             = "178953"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Angela Murthil"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    404998= {
      username             = "404998"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Michael Gutierrez"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955108"
        }
    }

    152567= {
      username             = "152567"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Gupta Wijeratne"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955108"
        }
    }

    544369= {
      username             = "544369"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Andrew Pham"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
        }
    }

    583536= {
      username             = "583536"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Andrew Pham"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    552899= {
      username             = "552899"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Adithya Raghuraman"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
        }
    }

    464826= {
      username             = "464826"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Abisoye Mudasiru"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    557089= {
      username             = "557089"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Gupta Wijeratne"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955088"
        }
    }

    519071= {
      username             = "519071"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Lynn Jahn"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955114"
        }
    }

    600814= {
      username             = "600814"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Sarkis Nalchadjian"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955043"
        }
    }

    565232= {
      username             = "565232"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Adithya Raghuraman"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955066"
        }
    }

    453665= {
      username             = "453665"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Rajesh Emani"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
        }
    }

    579329= {
      username             = "579329"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Wayne Mattingly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
        }
    }

    575103= {
      username             = "575103"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Srinivas Hotha"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955044"
        }
    }

    137958= {
      username             = "137958"
      running_mode         = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Angela Murthil"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    
    558372= {
      username             = "558372"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Wayne Mattingly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
        }
    }

    571905= {
      username             = "571905"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "AIUTTechnologyInc" 
        "User Manager"    = "Jamie Plummer"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
        }
    }

    556659= {
      username             = "556659"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Rajesh Emani"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955005"
        }
    }

    450301= {
      username             = "450301"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Wayne Mattingly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    562583= {
      username             = "562583"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Jai Kumar Dhanasekar"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
        }
    }

    571158= {
      username             = "571158"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Srinivas Hotha"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
        }
    }

    553471= {
      username             = "553471"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Stella Santiago"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
        }
    }

    432171= {
      username             = "432171"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Adithya Raghuraman"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955067"
        }
    }

    581672= {
      username             = "581672"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Wayne Mattingly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
        }
    }

    415849= {
      username             = "415849"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Gupta Wijeratne"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955088"
        }
    }

    420895= {
      username             = "420895"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Bernardita Lejarde"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    539344= {
      username             = "539344"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Jai Kumar Dhanasekar"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955042"
        }
    }

    542233= {
      username             = "542233"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Amy Speer"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955025"
        }
    }

    573179= {
      username             = "573179"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Adithya Raghuraman"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955066"
        }
    }

   550641= {
      username             = "550641"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Gupta Wijeratne"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955108"
        }
    }

    452491= {
      username             = "452491"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Debbie Fournier"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
        }
    }

    594281= {
      username             = "594281"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "ENGINEERINGUSA" 
        "User Manager"    = "Glenn Hall"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
        }
    }

    601805= {
      username             = "601805"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "ENGINEERINGUSA" 
        "User Manager"    = "Glenn Hall"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
        }
    }

    552763= {
      username             = "552763"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Sandeep Dhanuk"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
        }
    }

    592777= {
      username             = "592777"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Mustafa Elmas"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955090"
        }
    }

    467247= {
      username             = "467247"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Sandeep Dhanuk"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
        }
    }

    582683= {
      username             = "582683"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "BOOZALLENHAMILTON_INC" 
        "User Manager"    = "Jake Marullo"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
        }
    }

    586627= {
      username             = "586627"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "ASCENTTBusinessSolutions" 
        "User Manager"    = "Amandeep Chanana"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955004"
        }
    }

    569319= {
      username             = "569319"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Wayne Mattingly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955004"
        }
    }

    578916= {
      username             = "578916"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "MINDTREE LTD" 
        "User Manager"    = "Sandeep Dhanuk"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
        }
    }

    581300= {
      username             = "581300"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Sarkis Nalchadjian"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955066"
        }
    }

    171846= {
      username             = "171846"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Mohan Ravi"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
        }
    }

    594279= {
      username             = "594279"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "ENGINEERINGUSA" 
        "User Manager"    = "Glenn Hall"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
        }
    }

    452327= {
      username             = "452327"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Adithya Raghuraman"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    590438= {
      username             = "590438"
      running_mode         = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ENGINEERINGUSA" 
        "User Manager"    = "Glenn Hall"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
        }
    }

    593685= {
      username             = "593685"
      running_mode         = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TMCBUSINESSPARTNER_Affiliate" 
        "User Manager"    = "Jordan Howard"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955002"
        }
    }

    583950= {
      username             = "583950"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "BOOZALLENHAMILTON_INC" 
        "User Manager"    = "Jake Marullo"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955023"
        }
    }

    594278= {
      username             = "594278"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "ENGINEERINGUSA" 
        "User Manager"    = "Glenn Hall"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
        }
    }

    243379= {
      username             = "243379"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "TMNA" 
        "User Manager"    = "Amilcar Cruz"
        "Manager Dept"    = "Toyota Motor Manuf Canada"
        "Cost Center"     = "QRS00"
        }
    }

    548902= {
      username             = "548902"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Michael Gutierrez"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955108"
        }
    }

    469114= {
      username             = "469114"
      running_mode         = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "PARIVEDASOLUTIONS" 
        "User Manager"    = "Senthilkumar Ganesan"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955001"
        }
    }

    529033= {
      username             = "529033"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Wayne Mattingly"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955041"
        }
    }

    525638= {
      username             = "525638"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "InfosysLimited" 
        "User Manager"    = "Justin Lynch"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "956421"
        }
    }

    405097= {
      username             = "405097"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Freddy Khan"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
        }
    }

    406236= {
      username             = "406236"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Gregory Lyn"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955108"
        }
    }

    600168= {
      username             = "600168"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "ENGINEERINGUSA" 
        "User Manager"    = "Glenn Hall"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
        }
    }

    585685= {
      username             = "585685"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "Cognizant Technology Solutions" 
        "User Manager"    = "Michael Gutierrez"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955017"
        }
    }

    594274= {
      username             = "594274"
      running_mode         = "ALWAYS_ON"
      tags = {
        "CW-Provider"     = "ENGINEERINGUSA" 
        "User Manager"    = "Glenn Hall"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955089"
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
    "git_module" = "prod/us-east-1/prd/workspace_developerwave3_set12"
  }
}
