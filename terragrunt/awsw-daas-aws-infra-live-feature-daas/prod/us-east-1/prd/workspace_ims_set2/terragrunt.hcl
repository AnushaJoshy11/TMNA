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

    319858 = {
      username = "319858"
      tags = {
        "CW-Provider"  = "TEKSYSTEMS INC"
        "User Manager" = "Lauren Drew"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955074"
      }
    }
    604056  = {
      username = "604056"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    007825 = {
      username = "007825"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "John Baldwin"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955013"
      }
    }
    129895 = {
      username = "129895"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Jason Ballard"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955000"
      }
    }
    140403 = {
      username = "140403"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Rajesh Emani"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "140403"
      }
    }
    223572 = {
      username = "223572"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Paul Rucker"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955000"
      }
    }
    414542 = {
      username = "414542"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Phil Reuter"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955048"
      }
    }

    220244 = {
      username = "220244"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Michael Thomas"
        "Manager Dept" = "TIN Production Control Division"
        "Cost Center"  = "CJ100"
      }
    }
    438752 = {
      username = "438752"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "PADRE  SOFTWARE  INC"
        "User Manager" = "John Covington"
        "Manager Dept" = "TNA Information Systems Division"
        "Cost Center"  = "AH170"
      }
    }
    517186 = {
      username = "517186"
      tags = {
        "CW-Provider"  = "PERFICIENT_INC"
        "User Manager" = "Srini Bhupathiraju"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955115"
      }
    }
    230353 = {
      username = "230353"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Amilcar Cruz"
        "Manager Dept" = "TCN Quality Control Division"
        "Cost Center"  = "QRS00"
      }
    }
    543437 = {
      username = "543437"
      tags = {
        "CW-Provider"  = "Beyondsoft Consulting_Inc"
        "User Manager" = "Ben Takahashi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955115"
      }
    }
    577267 = {
      username = "577267"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955023"
      }
    }
    418355 = {
      username = "418355"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Richard Turner"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    585238 = {
      username = "585238"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "C2G ENG INC"
        "User Manager" = "Jesse Daniels"
        "Manager Dept" = "TNA Production Engineering Division"
        "Cost Center"  = "EN000"
      }
    }
    588211 = {
      username = "588211"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "PERFICIENT_INC"
        "User Manager" = "Donna Tojo"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955068"
      }
    }
    590783 = {
      username = "590783"
      
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955013"
      }
    }
    591841 = {
      username = "591841"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "John Baldwin"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    596941 = {
      username = "596941"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Yu Luo"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955023"
      }
    }
    601899 = {
      username = "601899"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TEMA TEAM MEMBER_Affiliate"
        "User Manager" = "Amilcar Cruz"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    601900 = {
      username = "601900"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TEMA TEAM MEMBER_Affiliate"
        "User Manager" = "Amilcar Cruz"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    565535 = {
      username = "565535"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "JMP Solutions"
        "User Manager" = "Hetal Modi Devram"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    602857 = {
      username = "602857"
      tags = {
        "CW-Provider"  = "ALERT ENTERPRISE INC"
        "User Manager" = "Scott Keen"
        "Manager Dept" = "TMNA Corporate Shared Services Division"
        "Cost Center"  = "956302"
      }
    }
    603058  = {
      username = "603058"
      tags = {
        "CW-Provider"  = "ALERT ENTERPRISE INC"
        "User Manager" = "Scott Keen"
        "Manager Dept" = "TMNA Corporate Shared Services Division"
        "Cost Center"  = "956302"
      }
    }
    603068 = {
      username = "603068"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Glenn Hall"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    603459  = {
      username = "603459"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955114"
      }
    }
    603654  = {
      username = "603654"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    603753  = {
      username = "603753"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    603679  = {
      username = "603679"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    603681  = {
      username = "603681"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }

    603680  = {
      username = "603680"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }

    603809  = {
      username = "603809"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }

    603792  = {
      username = "603792"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }

    603793  = {
      username = "603793"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955090"
      }
    }

    604285  = {
      username = "604285"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Honeywell"
        "User Manager" = "Hetal Modi Devram"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    604357  = {
      username = "604357"

      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Jason Brooks"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
     604506 = {
      username = "604506"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955013"
      }
    }
    604675  = {
      username = "604675"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955013"
      }
    }
    604832  = {
      username = "604832"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Srinivasa Komirisetty"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955090"
      }
    }
    605284  = {
      username = "605284"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "Tata Consultancy Services Limited"
        "User Manager" = "Chandra Manne"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    605642  = {
      username = "605642"
      tags = {
        "CW-Provider"  = "DeGould Ltd"
        "User Manager" = "Kandarp Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    605640  = {
      username = "605640"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DeGould Ltd"
        "User Manager" = "Kandarp Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    605741  = {
      username = "605741"
      tags = {
        "CW-Provider"  = "DeGould Ltd"
        "User Manager" = "Kandarp Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955026"
      }
    }
    225742  = {
      username = "225742"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Ram Kurapati"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "W6104"
      }
    }
    328787  = {
      username = "328787"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Scott Albanys"
        "Manager Dept" = "TNA Innovation_Monozukuri Solutions Di"
        "Cost Center"  = "W6102"
      }
    }
    591533  = {
      username = "591533"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "DXC TECHNOLOGY"
        "User Manager" = "Jim Kidder"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955017"
      }
    }
    318491  = {
      username = "318491"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"  = "TMNA"
        "User Manager" = "Grace Ng"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955013"
      }
    }
   437910= {
      username  = "437910"
      tags = {
        "CW-Provider"     = "TMNA"
        "User Manager"    = "Tom Spencer"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955036"
      }
    }
   605742= {
      username = "605742"
      tags = {
        "CW-Provider"     = "Tata Consultancy Services Limited"
        "User Manager"    = "Max Hernandez"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955020"
      }
      
    }

    605998= {
      username = "605998"
      tags = {
        "CW-Provider"     = "Tata Consultancy Services Limited"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955020"
      }
      
    }

    605132= {
      username = "605132"
      tags = {
        "CW-Provider"     = "Tata Consultancy Services Limited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955020"
      }
      
    }
  ##########new adoc user list####

   577031 = {
      username     = "577031"
      tags = {
        "CW-Provider" = "DXC TECHNOLOGY"
        "User Manager" = "James VanCura"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955013"
      }
    }
    587295 = {
      username     =  "587295"
      tags = {
        "CW-Provider" = "Tata Consultancy Services Limited"
        "User Manager" = "Ken Clerebout"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    605993 = {
      username     = "605993"
      tags = {
        "CW-Provider" = "Tata Consultancy Services Limited"
        "User Manager" = "Glenn Hall"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    606316 = {
      username     = "606316"
      tags = {
        "CW-Provider" = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    581958 = {
      username     = "581958"
      tags = {
        "CW-Provider" = "Tata Consultancy Services Limited"
        "User Manager" = "Glenn Hall"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
    600902 = {
      username     = "600902"
      tags = {
        "CW-Provider" = "Tata Consultancy Services Limited"
        "User Manager" = "Steven Patel"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    }
 

    606600= {
      username = "606600"
      tags = {
        "CW-Provider"     = "ACCENTURE"
        "User Manager"    = "Christina McCarver"
        "Manager Dept"    = "TMNA Human Resources Division"
        "Cost Center"     = "956518"
      }
      
    }
#### adding adhoc user ######

 516644 = {
      username     = "516644"
      tags = {
        "CW-Provider" = "Tata Consultancy Services Limited"
        "User Manager" = "Grace Ng"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955020"
      }
    } 
    247117 = {
      username     = "247117"
      tags = {
        "CW-Provider" = "TMNA"
        "User Manager" = "Vijay Chemuturi"
        "Manager Dept" = "TMNA OneTech Division"
        "Cost Center"  = "955029"
      }
    } 

  }

  ws_running_mode                   = "ALWAYS_ON"
  ws_compute_type_name              = "PERFORMANCE"
  ws_bundle_id                      = "wsb-3ywx9pcj4"
  ws_directory_id                   = "d-90678a5aff"
  ws_root_volume_encryption_enabled = true
  ws_user_volume_encryption_enabled = true
  ws_volume_encryption_key          = "arn:aws:kms:us-east-1:077387244011:key/5dc393d0-3b81-4589-bb3c-f87922b54456"
  ws_tags = {
    "Persona"    = "IMS"
    "git_module" = "prod/us-east-1/prd/workspace_ims_set2"
  }
}
   
