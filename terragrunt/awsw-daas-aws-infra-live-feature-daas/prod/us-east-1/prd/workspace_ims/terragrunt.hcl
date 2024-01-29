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
    #test users_internal
    ws_users = {

   603673= {
      username = "603673"
      tags = {
        "CW-Provider"     = "N/A"
        "User Manager"    = "N/A"
        "Manager Dept"    = "N/A"
        "Cost Center"     = "N/A"
      }
    }

   140093= {
      username  = "140093"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
         "CW-Provider"     = "N/A"
         "User Manager"    = "N/A"
         "Manager Dept"    = "N/A"
         "Cost Center"     = "N/A"
      }
    }

    #Raj team
   516576= {
      username  = "516576"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
   }
    
   587072= {
      username  = "587072"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    521666= {
      username  = "521666"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    409063= {
      username  = "409063"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    560352= {
      username  = "560352"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    401510= {
      username  = "401510"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    521813= {
      username  = "521813"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    556484= {
      username  = "556484"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    561445= {
      username  = "561445"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    585789= {
      username  = "585789"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    584508= {
      username  = "584508"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    516732= {
      username  = "516732"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    596147= {
      username = "596147"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    597950= {
      username  = "597950"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    597462= {
      username  = "597462"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    514069= {
      username  = "514069"
      bundle_id = "wsb-v7vmp4tlv"
      compute_type_name = "POWER"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Pradeep Chevuri"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    542843= {
      username  = "542843"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    530073= {
      username  = "530073"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    569484= {
      username  = "569484"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    569998= {
      username  = "569998"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    598460= {
      username  = "598460"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020" 
      }
    }
    570000= {
      username  = "570000"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    564315= {
      username  = "564315"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    516772= {
      username  = "516772"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    #pilot users

    141827= {
      username  = "141827"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TMNA"
        "User Manager"    = "Richard Turner"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955018"
      }
      }
    
    545686= {
      username     = "545686"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "CanonSolutionsAmerica"
        "User Manager"    = "Peeter Musta"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    510062= {
      username     = "510062"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "MatthewsIntlCorp_DBALightingPick"
        "User Manager"    = "Craig Vincek"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    530121= {
      username     = "530121"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "Canon Solutions America"
        "User Manager"    = "Amjad Ashoor"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    516646= {
      username     = "516646"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Grace Ng"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    580542= {
      username  = "580542"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Chandra Manne"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955023"
      }
    }
    472234= {
      username     = "472234"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ProjectAssociates_Inc"
        "User Manager"    = "John Birkner"
        "Manager Dept"    = "Toyota Motor Mfg Indiana_Inc"
        "Cost Center"     = "FM810"
      }
    }

    557771= {
      username  = "557771"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Srinivasa Komirisetty"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955090"
      }
    }
    568852= {
      username     = "568852"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "James VanCura"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955013"
      }
    }
    536292= {
      username  = "536292"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Pradeep Chevuri"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    559569= {
      username  = "559569"
      bundle_id = "wsb-v7vmp4tlv"
      tags = {
        "CW-Provider"     = "DXC TECHNOLOGY"
        "User Manager"    = "Jason Brooks"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }
    601395= {
      username     = "601395"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "AtlasCopcoTools_AssemblySystems"
        "User Manager"    = "Nick Westerveld"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955026"
      }
    }
    595806= {
      username     = "595806"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "ProjectAssociates_Inc"
        "User Manager"    = "Teresa Buchanan"
        "Manager Dept"    = "Toyota Motor Mfg Indiana_Inc"
        "Cost Center"     = "EZ800"
      }
    }
    581201= {
      username     = "581201"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "PattiEngineering_Inc"
        "User Manager"    = "Hassaan Khan"
        "Manager Dept"    = "Toyota Motor Engineering and Manufacturing North America_Inc"
        "Cost Center"     = "EC100"
      }
    }
    509411= {
      username     = "509411"
      bundle_id    = "wsb-v7vmp4tlv"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "PERFICIENT_INC"
        "User Manager"    = "Leslie Nessim"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955068"
      }
    }

    #wave3
    411092= {
      username          = "411092"
      bundle_id         = "wsb-vzxhr8gvb"
      compute_type_name = "POWER"
      tags = {
        "CW-Provider"     = "TNMA"
        "User Manager"    = "Kishore Jonnalagedda"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955011"
      }
    }
    598730= {
      username     = "598730"
      bundle_id    = "wsb-3ywx9pcj4"
      running_mode = "AUTO_STOP"
      tags = {
        "CW-Provider"     = "TataConsultancyServicesLimited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }

    150060= {
      username          = "150060"
      compute_type_name = "POWER"
      bundle_id         = "wsb-vzxhr8gvb"
      tags = {
        "CW-Provider"     = "TMNA"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMN Toyota Motor North America"
        "Cost Center"     = "955020"
      }
    }

#users added by zewen
    516776= {
      username = "516776"
      tags = {
        "CW-Provider"     = "Tata Consultancy Services Limited"
        "User Manager"    = "Max Hernandez"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955020"
      }
      
    }

    605134= {
      username = "605134"
      tags = {
        "CW-Provider"     = "Tata Consultancy Services Limited"
        "User Manager"    = "Steven Patel"
        "Manager Dept"    = "TMNA OneTech Division"
        "Cost Center"     = "955020"
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
    "git_module" = "prod/us-east-1/prd/workspace_ims"
  }
}
